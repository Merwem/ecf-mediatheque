<?php

namespace App\Repository;

use App\Entity\EmpruntAccord;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method EmpruntAccord|null find($id, $lockMode = null, $lockVersion = null)
 * @method EmpruntAccord|null findOneBy(array $criteria, array $orderBy = null)
 * @method EmpruntAccord[]    findAll()
 * @method EmpruntAccord[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class EmpruntAccordRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, EmpruntAccord::class);
    }

    // /**
    //  * @return EmpruntAccord[] Returns an array of EmpruntAccord objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('e.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?EmpruntAccord
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
