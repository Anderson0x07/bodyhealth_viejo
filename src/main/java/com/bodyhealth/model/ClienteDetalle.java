package com.bodyhealth.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Data
@Table(name = "ciente_detalle")
@IdClass(value = ClienteDetallePK.class)
public class ClienteDetalle implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int documentoC;
    @ManyToOne
    @PrimaryKeyJoinColumn(name = "documentoC",foreignKey = @ForeignKey(name = "FK_C_CD"))
    private Cliente cliente;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_detalle;
    @ManyToOne
    @PrimaryKeyJoinColumn(name = "id_detalle",foreignKey = @ForeignKey(name = "FK_D_CD"))
    private Detalle detalle;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Date fecha_inicio;

    private Date fecha_fin;

    @ManyToOne
    @JoinColumn(name = "id_metodopago")
    private MetodoPago metodoPago;
}
