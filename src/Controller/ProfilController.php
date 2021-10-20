<?php

namespace App\Controller;

use App\Repository\EmpruntRepository;
use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProfilController extends AbstractController
{
    /**
     * @Route("/profil", name="profil")
     */
    public function index(): Response
    {
        return $this->render('profil/index.html.twig', [
            'controller_name' => 'ProfilController',
        ]);
    }

    /**
     * @Route("/MesEmprunts", name="mes_emprunts")
     */
    public function mesEmprunt(UserRepository $userRepo, EmpruntRepository $repoEmprunt){
        $userEmpruntNonRendu = [];
        $userEmpruntRendu = [];
        $userEmpruntEnAttente = [];
        $userName = $this->get('security.token_storage')->getToken()->getUser();
        $user = $userRepo->find($userName);
        $allEmprunt = $repoEmprunt->findAll();
        foreach ($allEmprunt as $emprunt) {
            if ($emprunt->getUser() == $user && $emprunt->getEmpruntAccord()->getDateRecup() != null && $emprunt->getEmpruntAccord()->getDateRendu() == null) {
                $userEmpruntNonRendu[] = $emprunt;
            }
            if ($emprunt->getUser() == $user && $emprunt->getEmpruntAccord()->getDateRendu()) {
                $userEmpruntRendu[] = $emprunt;
            }
            if ($emprunt->getUser() == $user && $emprunt->getEmpruntAccord()->getValid() == false) {
                $userEmpruntEnAttente[] = $emprunt;
            }
        }
        return $this->render('profil/mesemprunts.html.twig', [
            'userEmpruntNonRendu' => $userEmpruntNonRendu,
            'userEmpruntRendu' => $userEmpruntRendu,
            'userEmpruntEnAttente' => $userEmpruntEnAttente
        ]);
    }
}
