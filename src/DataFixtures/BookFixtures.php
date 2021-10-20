<?php

namespace App\DataFixtures;

use Faker\Factory;
use App\Entity\Books;
use App\Entity\Genre;
use App\Repository\GenreRepository;
use DateTime;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class BookFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {

        $faker = Factory::create('fr_FR');
        for ($g=1; $g < 6; $g++) { 
            $genre = new Genre();
            $genre->setName($faker->word());

            $manager->persist($genre);

            for ($i=0; $i < 6; $i++) { 
                $book = new Books();
                $book->setTitle($faker->word())
                    ->setAuteur($faker->firstName())
                    ->setDescription($faker->text(200))
                    ->setImage($faker->imageUrl())
                    ->setFKGenreId($genre)
                    ->setParution(new DateTime($faker->date('Y-m-d','now')));

                    $manager->persist($book);
            }
        }
        

        $manager->flush();
    }
}
