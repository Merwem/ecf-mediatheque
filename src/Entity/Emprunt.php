<?php

namespace App\Entity;

use App\Repository\EmpruntRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=EmpruntRepository::class)
 */
class Emprunt
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=User::class, inversedBy="emprunts")
     */
    private $user;

    /**
     * @ORM\OneToOne(targetEntity=Books::class, inversedBy="emprunt", cascade={"persist", "remove"})
     */
    private $book;

    /**
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    /**
     * @ORM\OneToOne(targetEntity=EmpruntAccord::class, mappedBy="emprunt", cascade={"persist", "remove"})
     */
    private $empruntAccord;

    /**
     * @ORM\Column(type="datetime")
     */
    private $dateFin;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): self
    {
        $this->user = $user;

        return $this;
    }

    public function getBook(): ?Books
    {
        return $this->book;
    }

    public function setBook(?Books $book): self
    {
        $this->book = $book;

        return $this;
    }

    public function getCreatedAt(): ?\DateTime
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTime $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getEmpruntAccord(): ?EmpruntAccord
    {
        return $this->empruntAccord;
    }

    public function setEmpruntAccord(EmpruntAccord $empruntAccord): self
    {
        // set the owning side of the relation if necessary
        if ($empruntAccord->getEmprunt() !== $this) {
            $empruntAccord->setEmprunt($this);
        }

        $this->empruntAccord = $empruntAccord;

        return $this;
    }

    public function getDateFin(): ?\DateTimeInterface
    {
        return $this->dateFin;
    }

    public function setDateFin(\DateTimeInterface $dateFin): self
    {
        $this->dateFin = $dateFin;

        return $this;
    }
}
