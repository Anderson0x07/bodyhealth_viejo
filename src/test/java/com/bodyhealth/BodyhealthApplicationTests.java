package com.bodyhealth;

import com.bodyhealth.model.Usuario;
import com.bodyhealth.repository.UsuarioRepo;
import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootTest
class BodyhealthApplicationTests {

//        @Autowired
//        private UsuarioRepo rep;
//        
//        @Autowired
//        private BCryptPasswordEncoder encoder;
//    
//	@Test
//	public void crearUsuarioTest() {
//            Usuario us = new Usuario();
//            us.setNombre("Anderson");
//            us.setPassword(encoder.encode("123"));
//            
//            Usuario retorno = rep.save(us);
//            
//            assertTrue(retorno.getPassword().equalsIgnoreCase(us.getPassword()));
//            
//            
//            
//	}

}
