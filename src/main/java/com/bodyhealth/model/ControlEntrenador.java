package com.bodyhealth.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Data
@Table(name = "control_entrenador")
public class ControlEntrenador implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int documentoE;
    @OneToOne
    @PrimaryKeyJoinColumn
    private Entrenador entrenador;

    private double peso;
    private double estatura;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Date fecha;
}
