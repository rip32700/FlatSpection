package de.flatspection.config;

import javax.inject.Inject;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.vote.RoleVoter;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.social.config.annotation.SocialConfiguration;
import org.springframework.social.security.SpringSocialConfigurer;

import de.flatspection.service.impl.MyUserDetailsService;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	/*
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("landlord").password("123").roles("USER");
        auth.inMemoryAuthentication().withUser("renter").password("321").roles("USER");
        auth.inMemoryAuthentication().withUser("admin").password("admin").roles("USER", "ADMIN");
    }
    */
    
    /* for custom user service form persistence layer */
    @Inject
    private MyUserDetailsService userDetailsService;
    
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService);
    }
    
    protected void configure(HttpSecurity http) throws Exception {
    	http.authorizeRequests()
        .antMatchers("/", "/home").permitAll()
        .antMatchers("/admin/**").access("hasRole('ADMIN')")
        .antMatchers("/profile/**").access("hasRole('USER')")
        .and().formLogin().loginPage("/login")
        .usernameParameter("ssoId").passwordParameter("password")
        .and().csrf()
        .and().exceptionHandling().accessDeniedPage("/access_Denied");
        //.and().apply(new SpringSocialConfigurer().postLoginUrl("/").alwaysUsePostLoginUrl(true));
    }
    
    @Bean
    public RoleVoter roleVoter() {
        RoleVoter roleVoter = new RoleVoter();
        roleVoter.setRolePrefix("");
        return roleVoter;
    }
}
