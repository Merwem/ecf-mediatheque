<?php

namespace App\Controller;

use DateTime;
use DateInterval;
use App\Entity\User;
use App\Entity\Emprunt;
use App\Entity\UserAccord;
use App\Form\AccordUserType;
use App\Entity\EmpruntAccord;
use App\Repository\UserRepository;
use App\Repository\BooksRepository;
use App\Repository\EmpruntRepository;
use App\Repository\UserAccordRepository;
use Doctrine\ORM\EntityManagerInterface;
use App\Repository\EmpruntAccordRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminController extends AbstractController
{
    /**
     * @Route("/admin", name="admin_page")
     */
    public function admin(UserAccordRepository $repoAccord, EmpruntRepository $repoEmpruntAccord)
    {
        $userAccordFalse = [];
        $userAccord = $repoAccord->findAll();
        $now = new DateTime();

        foreach ($userAccord as $accord) {
            if ($accord->getAccord() == false) {
                $userAccordFalse[] = $accord;
            }
        }

        $empruntAccordFalse = [];
        $empruntAccordTrue = [];
        $empruntAccord = $repoEmpruntAccord->findAll();

        foreach ($empruntAccord as $emprunt) {
            if ($emprunt->getEmpruntAccord()->getValid() == false && $emprunt->getEmpruntAccord()->getDateRendu() == null ) {
                $empruntAccordFalse[] = $emprunt;
            }
            if ($emprunt->getEmpruntAccord()->getValid() == true && $emprunt->getEmpruntAccord()->getDateRendu() == null) {
                $empruntAccordTrue[] = $emprunt;
            }
        }
        
    
        return $this->render('admin/admin.html.twig', [
            'listeAccord' => $userAccordFalse,
            'listeEmpruntFalse' => $empruntAccordFalse,
            'listeEmpruntTrue' => $empruntAccordTrue,
            'now' => $now
        ]);
    }

        
    

    /**
    * @Route("/accordUser/{id}", name="accord_user")
    */
    public function validUser($id, UserAccordRepository $userRepo, EntityManagerInterface $manager){
        $accord = $userRepo->find($id);
        $accord->setAccord(true);
        $manager->persist($accord);
        $manager->flush();
        return $this->redirectToRoute('admin_page');
    }

    /**
    * @Route("/accordEmprunt/{id}", name="accord_emprunt")
    */
    public function validEmprunt($id, EmpruntRepository $repoEmprunt, EntityManagerInterface $manager){
        $emprunt = $repoEmprunt->find($id);
        $accord = $emprunt->getEmpruntAccord();
        $accord->setValid(true)
               ->setDateRecup(new DateTime());
        $manager->persist($accord);
        $manager->flush();
        return $this->redirectToRoute('admin_page');
    }

    /**
    * @Route("/RendEmprunt/{id}", name="rend_emprunt")
    */
    public function rendEmprunt($id, EmpruntRepository $repoEmprunt, EntityManagerInterface $manager){
        $emprunt = $repoEmprunt->find($id);
        $accord = $emprunt->getEmpruntAccord();
        $accord->setDateRendu(new DateTime());
        $manager->persist($accord);
        $manager->flush();
        return $this->redirectToRoute('admin_page');
    }

    /**
    * @Route("/emprunt/{idBook}", name="emprunt")
    */
    public function emprunt($idBook, UserRepository $userRepo,BooksRepository $repoBook, EntityManagerInterface $manager){

        $userName = $this->get('security.token_storage')->getToken()->getUser();
        $user = $userRepo->find($userName);
        
        $book = $repoBook->find($idBook);
        $emprunt = new Emprunt();
        $emprunt->setUser($user)
                ->setBook($book)
                ->setCreatedAt(new DateTime())
                ->setDateFin((new DateTime(($emprunt->getCreatedAt())->format('Y-m-d')))->add(new DateInterval('P3D')));
        $manager->persist($emprunt);

        $validEmprun = new EmpruntAccord();
        $validEmprun->setEmprunt($emprunt)
                    ->setValid(false);
        $manager->persist($validEmprun);
        $manager->flush();
        $msgEmprunt = "Merci de nous faire confiance, vous avez trois jours pour récuprer votre livre.";
        return $this->redirectToRoute('home',[
            'msgEmprunt' => $msgEmprunt
        ]);
    }
    
}  