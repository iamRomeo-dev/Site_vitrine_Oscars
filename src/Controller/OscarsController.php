<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\CelebritiesRepository;
use App\Entity\Celebrities;

class OscarsController extends AbstractController
{

    /**
     * @Route("/", name="app_home")
     */
    public function index(CelebritiesRepository $repo)
    {
        $oscars = $repo->findBy(array('reward' => 'oscar'));

        return $this->render('oscars/index.html.twig', [
            'controller_name' => 'OscarsController',
            'oscars' => $oscars
        ]);

    }


    /**
     * @Route("/actors", name="app_actors")
     */
    public function actors(CelebritiesRepository $repo)
    {
        $actors = $repo->findBy(array('sexe' => 'homme'));

        return $this->render('oscars/actors.html.twig', [
            'controller_name' => 'OscarsController',
            'actors' => $actors
        ]);

    }


    /**
     * @Route("/actress", name="app_actress")
     */
    public function actress(CelebritiesRepository $repo)
    {
        $actress = $repo->findBy(array('sexe' => 'femme'));

        return $this->render('oscars/actress.html.twig', [
            'controller_name' => 'OscarsController',
            'actress' => $actress
        ]);

    }


    /**
     * @Route("/actors/{id}", name="app_actors_show", methods="GET")
     */
    public function showActor(Celebrities $actor): Response
    {
        return $this->render('oscars/showActor.html.twig', compact('actor'));
    }


    /**
     * @Route("/actress/{id}", name="app_actress_show", methods="GET")
     */
    public function showActress(Celebrities $actress): Response
    {
        return $this->render('oscars/showActress.html.twig', compact('actress'));
    }
    
}