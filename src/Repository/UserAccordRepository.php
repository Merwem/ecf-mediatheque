<?php

namespace App\Repository;

use App\Entity\UserAccord;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method UserAccord|null find($id, $lockMode = null, $lockVersion = null)
 * @method UserAccord|null findOneBy(array $criteria, array $orderBy = null)
 * @method UserAccord[]    findAll()
 * @method UserAccord[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class UserAccordRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, UserAccord::class);
    }

    // /**
    //  * @return UserAccord[] Returns an array of UserAccord objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('u.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?UserAccord
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
