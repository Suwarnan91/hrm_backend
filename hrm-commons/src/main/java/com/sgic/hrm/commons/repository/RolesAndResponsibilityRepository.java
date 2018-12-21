package com.sgic.hrm.commons.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sgic.hrm.commons.entity.RolesAndResponsibilites;
import com.sgic.hrm.commons.entity.User;


public interface RolesAndResponsibilityRepository extends JpaRepository<RolesAndResponsibilites, Integer> {
	List<RolesAndResponsibilites>findRolesAndResponsibilitesByUser(User user);
}
