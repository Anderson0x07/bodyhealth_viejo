package com.bodyhealth.service;

import com.bodyhealth.model.Entrenador;

import java.util.List;

public interface EntrenadorService {

    public List<Entrenador> listarEntrenadores();

    public void guardar(Entrenador entrenador);

    public void eliminar(Entrenador entrenador);

    public Entrenador encontrarEntrenador(Entrenador entrenador);
}
