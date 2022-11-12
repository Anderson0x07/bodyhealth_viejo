package com.bodyhealth.service;

import com.bodyhealth.model.Administrador;
import com.bodyhealth.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class AdminServiceImpl implements AdminService{

    @Autowired
    private AdminRepository adminRepo;


    @Override
    @Transactional(readOnly = true)
    public Administrador buscarAdmin(Administrador admin) {
        return adminRepo.findById(admin.getDocumento()).orElse(null);
    }
}
