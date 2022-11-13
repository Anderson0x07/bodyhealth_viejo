package com.bodyhealth.model;


import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
@Entity
@Data
@Table(name = "detalle")
public class Detalle implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_detalle;

    @ManyToOne
    @JoinColumn(name = "id")
    private Plan plan;

    private double precio;
    private int meses;
}
