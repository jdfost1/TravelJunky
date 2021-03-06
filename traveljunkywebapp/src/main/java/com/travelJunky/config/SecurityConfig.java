package com.travelJunky.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.travelJunky.service.UserService;
 
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UserService userService;
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public DaoAuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider auth = new DaoAuthenticationProvider();
		auth.setUserDetailsService(userService);
		auth.setPasswordEncoder(passwordEncoder());
		return auth;
	}
	
    @Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(authenticationProvider());
	}

	@Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
		httpSecurity.authorizeRequests()
			.antMatchers("/").permitAll()
			.antMatchers("/challenge-list").permitAll()
			.antMatchers("/account").access("hasAuthority('USER')")
			.antMatchers("/account/update").access("hasAuthority('USER')")
			.antMatchers("/account/delete").access("hasAuthority('USER')")
			.antMatchers("/budget").access("hasAuthority('USER')")
			.antMatchers("/budget/*").access("hasAuthority('USER')")
			.and()
			.formLogin()
				.loginPage("/account/login")
				.loginProcessingUrl("/account/process-login")
				.defaultSuccessUrl("/")
				.usernameParameter("email")
                .permitAll()
			.and()
			.logout()
				.logoutUrl("/account/logout")
				.logoutSuccessUrl("/account/login?logout")
				.permitAll()
			.and()
			.exceptionHandling().accessDeniedPage("/account/login?accessDenied");
    }
}
