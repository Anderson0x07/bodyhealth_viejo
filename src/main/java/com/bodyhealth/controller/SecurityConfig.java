package com.bodyhealth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter implements WebMvcConfigurer{

    
//    @Autowired
//    private UserDetailsService userDetailsService;
//
//    @Autowired
//    private BCryptPasswordEncoder bcrypt;
//
//    @Bean
//    public BCryptPasswordEncoder passwordEncoder(){
//        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//        return bCryptPasswordEncoder;
//    }

    @Override
    public void configure(AuthenticationManagerBuilder build) throws Exception{
        build.inMemoryAuthentication()
                .withUser("admin")
                .password("{noop}123")
                .roles("ADMIN","USER")
                .and()
                .withUser("user")
                .password("{noop}123")
                .roles("USER")
                .and()
                .withUser("trainer")
                .password("{noop}123")
                .roles("TRAINER");
                
//        build.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception{
        
//        http.authorizeRequests().anyRequest().authenticated().and().formLogin()
        http.authorizeRequests()
                .antMatchers("/")
                    .hasAnyRole("USER","ADMIN","TRAINER")
                .antMatchers("/administradores/**")
                    .hasRole("ADMIN")
                .antMatchers("/trainer/**")
                .hasRole("TRAINER")
                .and()
                    .formLogin()
                    .loginPage("/loginForm")
                    .loginProcessingUrl("/autenticacion")
                .permitAll()
                .and().logout().permitAll()
                .and()
                    .exceptionHandling().accessDeniedPage("/errores/403")
                ;

    }
    
//    @Override
//    public void addViewControllers(ViewControllerRegistry registro){
//        registro.addViewController("/").setViewName("index");
//        registro.addViewController("/login");
//        registro.addViewController("/errores/403").setViewName("/errores/403");
//    }
    
}
