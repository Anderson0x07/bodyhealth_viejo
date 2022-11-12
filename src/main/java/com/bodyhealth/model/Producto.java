package com.bodyhealth.model;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.io.Serializable;


@Entity
@Data
@Table(name = "producto")
public class Producto implements Serializable{

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idProducto;


    private String nombre;


    private int stock;


    private double precio;

    @ManyToOne
    @JoinColumn(name = "idProveedor")
    private Proveedor idProveedor;
}
