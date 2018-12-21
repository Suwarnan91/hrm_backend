package com.sgic.hrm.profile.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.sgic.hrm.commons.entity.Designation;
import com.sgic.hrm.profile.service.DesignationService;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
@RestController
public class DesignationController {
	@Autowired
	private DesignationService designationService;
	
	@PostMapping("/designation")
	public HttpStatus createDesignation(@RequestBody Designation designation )
	{
		boolean testadd = designationService.addDesignation(designation);
		if(testadd) {
			return HttpStatus.CREATED;
		}
		return HttpStatus.BAD_REQUEST;
	
	}
	
	@GetMapping("/designation")
	public ResponseEntity<List<Designation>> GetDesignation(){
		List<Designation> designation= designationService.getDesignation();
		ResponseEntity<List<Designation>> 
		response =  new ResponseEntity<>(designation,HttpStatus.OK);
		return response;
	}
	@PutMapping("/designation/{id}")
	public HttpStatus ModifyDesignation(@RequestBody Designation designation,@PathVariable Integer id) {
		boolean test=designationService.editDesignation(designation, id);
		if (test) {
			return HttpStatus.ACCEPTED;
		}
		return HttpStatus.BAD_REQUEST;
	}
	
	@DeleteMapping("/designation/{id}")
	public HttpStatus DeleteDesignation(@PathVariable Integer id) {
		boolean test=designationService.deleteDesignation(id);
		if(test) {
			return HttpStatus.ACCEPTED;
		}
		return HttpStatus.BAD_REQUEST;
	}
}
