<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\UserAccord;
use App\Form\LoginType;
use App\Form\RegistrationType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UsersController extends AbstractController
{

    /**
     * @Route("/registration", name="ragistration_form")
     */
    public function registration(Request $request, EntityManagerInterface $manager, UserPasswordEncoderInterface $encoder){

        $user = new User();
        
        $form = $this->createForm(RegistrationType::class, $user);
        
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $accord = new UserAccord();
            $accord->setAccord(false);
            $user->setRole('0');
            $user->setPassword($encoder->encodePassword($user, $user->getPassword()));
            $user->setUserAccord($accord);
            $manager->persist($user);
            $manager->persist($accord);
            $manager->flush();

            return $this->redirectToRoute('login_form');
        }

        return $this->render('users/registration.html.twig', [
            'formRegistration' => $form->createView()
        ]);
    }

    /**
     * @Route("/login", name="login_form")
     */
    public function login(Request $request, EntityManagerInterface $manager,){
        $error = "";
        $user = new User();
        $form = $this->createForm(LoginType::class, $user);

        return $this->render('users/login.html.twig', [
            'formLogin' => $form->createView(),
            'error' => $error
        ]);
    }   

    /**
     * @Route("/logout", name="logout_form")
     */
    public function logout(){   
    }   
}
