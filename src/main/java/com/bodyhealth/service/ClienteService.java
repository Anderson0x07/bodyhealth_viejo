package com.bodyhealth.service;


import com.bodyhealth.model.Cliente;

import java.util.List;

public interface ClienteService {

    public List<Cliente> listarClientes();

    public void guardar(Cliente cliente);

    public void eliminar(Cliente cliente);
    public Cliente encontrarPersona(Cliente cliente);
}
