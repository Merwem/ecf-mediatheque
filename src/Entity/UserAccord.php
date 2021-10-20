<?php

namespace App\Entity;

use App\Repository\UserAccordRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=UserAccordRepository::class)
 */
class UserAccord
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="boolean")
     */
    private $accord;

    /**
     * @ORM\OneToOne(targetEntity=User::class, inversedBy="userAccord", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $user;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAccord(): ?bool
    {
        return $this->accord;
    }

    public function setAccord(bool $accord): self
    {
        $this->accord = $accord;

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(User $user): self
    {
        $this->user = $user;

        return $this;
    }
}
