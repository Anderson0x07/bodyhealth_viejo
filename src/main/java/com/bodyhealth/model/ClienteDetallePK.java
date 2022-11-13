package com.bodyhealth.model;

import lombok.Data;

import javax.persistence.Column;
import java.io.Serializable;
@Data
public class ClienteDetallePK implements Serializable {
    @Column(name = "documento",insertable = false,updatable = false)
    private Cliente cliente;
    @Column(name = "id_detalle",insertable = false,updatable = false)
    private Detalle detalle;
}
