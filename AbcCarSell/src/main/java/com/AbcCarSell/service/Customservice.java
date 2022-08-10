package com.AbcCarSell.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.AbcCarSell.dao.userDao;
import com.AbcCarSell.dto.AbcUserBeans;
import com.AbcCarSell.security.ApplicationUserDetail;

@Service
public class Customservice implements UserDetailsService {
	
	@Autowired
	userDao userdao;
    AbcUserBeans user;
	
  //loginsecurity
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		user=userdao.findByUsername(username);
		if(user==null) {
			System.out.println("Username is Invalid");
			throw new UsernameNotFoundException("User Not Found with -> username or email: " + username);
		}
		return new ApplicationUserDetail(user);
	}
}
