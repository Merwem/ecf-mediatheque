<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Genre;
use App\Form\LoginType;
use App\Repository\BooksRepository;
use App\Repository\EmpruntRepository;
use App\Repository\GenreRepository;
use Doctrine\ORM\Tools\Pagination\Paginator;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;

class AppController extends AbstractController
{
    /**
     * @Route("/app", name="app")
     */
    public function index(): Response
    {
        return $this->render('app/index.html.twig', [
            'controller_name' => 'AppController',
        ]);
    }
    /**
     * @Route("/", name="home")
     */
    public function home(GenreRepository $repo,BooksRepository $repoBooks,TokenStorageInterface $user, EmpruntRepository $repoEmprunt){
        if ($user->getToken()->getUser() != 'anon.') {
            $currentAccord = $user->getToken()->getUser()->getUserAccord()->getAccord();
            if ($currentAccord == false) {
                $user = new User();
                $form = $this->createForm(LoginType::class, $user);
                $error= "votre demande d'inscription n'est pas encore validée, veuillez vous déconnecter";
    
                return $this->render('users/login.html.twig', [
                    'error' => $error,
                    'formLogin' => $form->createView()
                ]);
            }else{
                $listeGenre = $repo->findAll();
                $listeBooks = $repoBooks->findAll();
                return $this->render('app/home.html.twig', [
                    'listeGenre' => $listeGenre,
                    'listeBooks' => $listeBooks,
                ]);
                
            }
        }else{
            $listeGenre = $repo->findAll();
            $listeBooks = $repoBooks->findAll();
                return $this->render('app/home.html.twig', [
                    'listeGenre' => $listeGenre,
                    'listeBooks' => $listeBooks,
                ]);
        }

    }

    /**
     * @Route("/livre/{id}/{name}", name="show_book")
     */
    public function show($id,$name, BooksRepository $repoBooks){
        
        
        $bookShow = $repoBooks->find($id);
        $bookId = $bookShow->getId();
        $allBooks = $repoBooks->findAll();
        $SameGenre = [];
        $sameGenre3 = [];
        foreach ($allBooks as $book) {
            if ($book->getFKGenreId()->getName() == $name && $book->getId()!= $id) {
                $SameGenre[] = $book;
            }
        }
        
        for ($i=0; $i < 3; $i++) { 
            $sameGenre3[] = $SameGenre[$i];
        }
        return $this->render('app/show.html.twig', [
            'book' => $bookShow,
            'SameGenre' => $sameGenre3,
            'idBook' => $bookId
        ]);
    }
}
