package com.example.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth
		    .inMemoryAuthentication()
			.withUser("user")
			.password("{noop}user") 
			.roles("COMUN")
			.and()
			.withUser("admin")
			.password("{noop}admin")
			.roles("ADMIN");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
	
		
  http
        .csrf().disable()
		.authorizeRequests()
		.antMatchers("/empleado").permitAll()
		.antMatchers("/h2-console/**").hasRole("ADMIN")
        .antMatchers("/empleado").hasAnyRole("COMUN","ADMIN")
        .antMatchers("/empleado/**").hasRole("ADMIN")
		.anyRequest().authenticated()
		.and()
        .formLogin()
        .loginPage("/login")
        .permitAll()
        .defaultSuccessUrl("/empleado",true)
        .and()
        .headers().frameOptions().disable(); // esto es para que aparezca la consola de h2
       
	}
}
