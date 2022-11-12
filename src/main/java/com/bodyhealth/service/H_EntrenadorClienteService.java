package com.bodyhealth.service;

import com.bodyhealth.model.*;
import net.bytebuddy.asm.Advice;

import java.util.List;

public interface H_EntrenadorClienteService {

    public List<H_EntrenadorCliente> listarH_EntrenadorCliente();

    public void guardar(H_EntrenadorCliente h_entrenadorCliente);

    public void eliminar(H_EntrenadorCliente h_entrenadorCliente);


}
