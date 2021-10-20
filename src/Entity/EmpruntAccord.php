<?php

namespace App\Entity;

use App\Repository\EmpruntAccordRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=EmpruntAccordRepository::class)
 */
class EmpruntAccord
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\OneToOne(targetEntity=Emprunt::class, inversedBy="empruntAccord", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $emprunt;

    /**
     * @ORM\Column(type="boolean")
     */
    private $valid;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $dateRecup;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $dateRendu;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEmprunt(): ?Emprunt
    {
        return $this->emprunt;
    }

    public function setEmprunt(Emprunt $emprunt): self
    {
        $this->emprunt = $emprunt;

        return $this;
    }

    public function getValid(): ?bool
    {
        return $this->valid;
    }

    public function setValid(bool $valid): self
    {
        $this->valid = $valid;

        return $this;
    }

    public function getDateRecup(): ?\DateTimeInterface
    {
        return $this->dateRecup;
    }

    public function setDateRecup(?\DateTimeInterface $dateRecup): self
    {
        $this->dateRecup = $dateRecup;

        return $this;
    }

    public function getDateRendu(): ?\DateTimeInterface
    {
        return $this->dateRendu;
    }

    public function setDateRendu(?\DateTimeInterface $dateRendu): self
    {
        $this->dateRendu = $dateRendu;

        return $this;
    }
}
