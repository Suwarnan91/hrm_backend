package com.sgic.hrm.par.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.sgic.hrm.commons.dto.par.ScheduleParAppraisorsDtoGet;
import com.sgic.hrm.commons.dto.par.ScheduleParAppraisorsDtoPost;
import com.sgic.hrm.commons.dto.par.ScheduleParContentDtoGet;
import com.sgic.hrm.commons.dto.par.ScheduleParContentDtoPost;
import com.sgic.hrm.commons.dto.par.ScheduleParDtoGet;
import com.sgic.hrm.commons.dto.par.ScheduleParDtoPost;
import com.sgic.hrm.commons.entity.par.EmployeeDetails;
import com.sgic.hrm.commons.entity.par.Par;
import com.sgic.hrm.par.service.EmployeeDetailsService;
import com.sgic.hrm.par.service.ParService;
import com.sgic.hrm.par.serviceCombined.ParScheduleService;

@CrossOrigin
@RestController
public class ScheduleParController {

	@Autowired
	ParScheduleService parScheduleService;
	@Autowired
	ParService parservice;
	@Autowired
	EmployeeDetailsService employeeDetailsService;

	@GetMapping("/scheduleparPostTemp")
	public ScheduleParDtoPost getScheduleParPost() {
		ScheduleParDtoPost objScheduleParDTO = new ScheduleParDtoPost();

		List<ScheduleParAppraisorsDtoPost> scheduleParAppraisorList = new ArrayList<>();
		scheduleParAppraisorList.add(new ScheduleParAppraisorsDtoPost(1));
		scheduleParAppraisorList.add(new ScheduleParAppraisorsDtoPost(2));
		scheduleParAppraisorList.add(new ScheduleParAppraisorsDtoPost(3));

		List<ScheduleParContentDtoPost> scheduleParContentList = new ArrayList<>();
		scheduleParContentList.add(new ScheduleParContentDtoPost(1));
		scheduleParContentList.add(new ScheduleParContentDtoPost(2));

		objScheduleParDTO.setScheduleParAppraisorsList(scheduleParAppraisorList);
		objScheduleParDTO.setScheduleParContentList(scheduleParContentList);
		return objScheduleParDTO;
	}

	@GetMapping("/scheduleparGetTemp")
	public ScheduleParDtoGet getScheduleParGet() {
		ScheduleParDtoGet scheduleParDtoGet = new ScheduleParDtoGet();

		List<ScheduleParAppraisorsDtoGet> scheduleParAppraisorList = new ArrayList<>();
		scheduleParAppraisorList.add(new ScheduleParAppraisorsDtoGet());
		scheduleParAppraisorList.add(new ScheduleParAppraisorsDtoGet());

		List<ScheduleParContentDtoGet> scheduleParContentList = new ArrayList<>();
		scheduleParContentList.add(new ScheduleParContentDtoGet());
		scheduleParContentList.add(new ScheduleParContentDtoGet());

		scheduleParDtoGet.setScheduleParAppraisorsList(scheduleParAppraisorList);
		scheduleParDtoGet.setScheduleParContentList(scheduleParContentList);
		return scheduleParDtoGet;
	}

	@PostMapping("/schedulepar")
	public void createSchedulePar(@RequestBody ScheduleParDtoPost objScheduleParDTO) {
		// boolean=

		parScheduleService.createSchedulePar(objScheduleParDTO);
	}

	@GetMapping("/schedulepar/emp/{empid}")
	public ResponseEntity<List<Par>> findByEmployeeId(@PathVariable("empid") String id) {
		return new ResponseEntity<>(parservice.findByEmployeeId(id), HttpStatus.OK);
	}

	// this is done to pull par schedule par details
	@GetMapping("/schedulepar/par/{parId}")
	public ResponseEntity<ScheduleParDtoGet> findByParId(@PathVariable("parId") Integer parId) {
		return new ResponseEntity<>(parScheduleService.getSchedulePar(parId), HttpStatus.OK);
	}

	// done to show the records of par
	@GetMapping("/schedulepar")
	public ResponseEntity<List<Par>> parHistory() {
		List<Par> par = parservice.parHistory();
		ResponseEntity<List<Par>> response = new ResponseEntity<>(par, HttpStatus.OK);
		return response;
	}

	@DeleteMapping("/schedulepar/par/{parId}")
	public void deleteSchedulePar(@PathVariable("parId") Integer parId) {
		parScheduleService.deleteSchedulePar(parId);
	}

	@GetMapping("/schedulepar/empname/{EmpName}")
	public ResponseEntity<List<EmployeeDetails>> getEmployeeName(@PathVariable("EmpName") String EmpName) {
		List<EmployeeDetails> employeeName = employeeDetailsService.findByEmpName(EmpName);
		ResponseEntity<List<EmployeeDetails>> response = new ResponseEntity<>(employeeName, HttpStatus.OK);
		return response;

	}
}