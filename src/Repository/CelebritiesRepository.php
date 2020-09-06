<?php

namespace App\Repository;

use App\Entity\Celebrities;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Celebrities|null find($id, $lockMode = null, $lockVersion = null)
 * @method Celebrities|null findOneBy(array $criteria, array $orderBy = null)
 * @method Celebrities[]    findAll()
 * @method Celebrities[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CelebritiesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Celebrities::class);
    }

    // /**
    //  * @return Celebrities[] Returns an array of Celebrities objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Celebrities
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
