package com.AbcCarSell.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.AbcCarSell.dto.AbcUserBeans;


public interface userDao extends JpaRepository<AbcUserBeans, Integer> {
	
	//login using security
	AbcUserBeans findByUsername(String username);
	
}
