package com.example.filmapplication;

import jakarta.persistence.*;

@Entity
@Table(name = "sv_35_2021")
public class Film {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String genre;
    private Long year;

    // Constructors, getters, and setters
}
