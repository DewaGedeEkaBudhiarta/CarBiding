package com.AbcCarSell.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.AbcCarSell.dto.CarPostBeans;

@Repository
public interface carDao extends JpaRepository<CarPostBeans, Integer> {
	
	//for searching
		@Query(value="select * from car where make like %:searching% or model like %:searching%", nativeQuery = true)
		List<CarPostBeans> findByMakeAndModel(@Param("searching") String search);

}
