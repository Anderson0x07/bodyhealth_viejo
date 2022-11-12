package com.bodyhealth.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
@Entity
@Data
@Table(name = "horario_entrenador")
public class HorarioEntrenador implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int documentoE;
    @OneToOne
    @PrimaryKeyJoinColumn
    private Entrenador entrenador;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_horario;
    @OneToOne
    @PrimaryKeyJoinColumn
    private Horario horario;

}
