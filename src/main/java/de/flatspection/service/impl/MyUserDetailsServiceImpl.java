package de.flatspection.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import de.flatspection.dao.UserDao;
import de.flatspection.domain.User;

@Service
public class MyUserDetailsServiceImpl implements UserDetailsService {

	@Inject
	private UserDao repository;
	
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = repository.findByEmail(email);
        if (user == null) {
            throw new UsernameNotFoundException("No user found with username: "+ email);
        }
        boolean enabled = true;
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;
        return  null; //new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword().toLowerCase(), enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, getAuthorities(user.getRole().getRole()));
    }
     
    private Collection<? extends GrantedAuthority>getAuthorities(Integer role){
        List<GrantedAuthority> authList = getGrantedAuthorities(getRoles(role));
        return authList;
    }
    private List<String> getRoles(Integer role) {
        List<String> roles = new ArrayList<String>();
        if (role.intValue() == 1) {
            roles.add("ROLE_USER");
            roles.add("ROLE_ADMIN");
        } else if (role.intValue() == 2) {
            roles.add("ROLE_USER");
        }
        return roles;
    }   
    private static List<GrantedAuthority> getGrantedAuthorities (List<String> roles) {
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for (String role : roles) {
            authorities.add(new SimpleGrantedAuthority(role));
        }
        return authorities;
    }
}

