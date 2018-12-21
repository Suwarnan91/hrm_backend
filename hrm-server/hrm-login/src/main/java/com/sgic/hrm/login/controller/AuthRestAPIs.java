package com.sgic.hrm.login.controller;

import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

import javax.validation.Valid; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sgic.hrm.commons.entity.JwtResponse;
import com.sgic.hrm.commons.entity.Login;
import com.sgic.hrm.commons.entity.LoginForm;
import com.sgic.hrm.commons.entity.ResponseMessage;
import com.sgic.hrm.commons.entity.Role;
import com.sgic.hrm.commons.entity.SignUpForm;
import com.sgic.hrm.commons.enums.RoleName;
import com.sgic.hrm.commons.repository.LoginRepository;
import com.sgic.hrm.commons.repository.RoleRepository;
import com.sgic.hrm.login.security.JwtProvider;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
@RestController
@RequestMapping("/api/auth")
public class AuthRestAPIs {

	@Autowired
	AuthenticationManager authenticationManager;

	@Autowired
	LoginRepository loginRepository;

	@Autowired
	RoleRepository roleRepository;

	@Autowired
	PasswordEncoder encoder;

	@Autowired
	JwtProvider jwtProvider;

	@PostMapping("/signin")
	public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginForm loginRequest) {

		Authentication authentication = authenticationManager.authenticate(
				new UsernamePasswordAuthenticationToken(loginRequest.getUsername(), loginRequest.getPassword()));

		SecurityContextHolder.getContext().setAuthentication(authentication);

		String jwt = jwtProvider.generateJwtToken(authentication);
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();

		return ResponseEntity.ok(new JwtResponse(jwt, userDetails.getUsername(), userDetails.getAuthorities()));
	}

	@PostMapping("/signup")
	public ResponseEntity<?> registerUser(@Valid @RequestBody SignUpForm signUpRequest) {
		if (loginRepository.existsByUsername(signUpRequest.getUsername())) {
			return new ResponseEntity<>(new ResponseMessage("Fail -> Username is already taken!"),
					HttpStatus.BAD_REQUEST);
		}

		if (loginRepository.existsByEmail(signUpRequest.getEmail())) {
			return new ResponseEntity<>(new ResponseMessage("Fail -> Email is already in use!"),
					HttpStatus.BAD_REQUEST);
		}

		// Creating user's account
		Login login = new Login(signUpRequest.getUser(), signUpRequest.getUsername(),  signUpRequest.getEmail(),
				encoder.encode(signUpRequest.getPassword()));

		Set<String> strRoles = signUpRequest.getRole();
		Set<Role> roles = new HashSet<>();

		strRoles.forEach(role -> {
			switch (role) {
			case "admin":
				Role adminRole = roleRepository.findByName(RoleName.ADMIN)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(adminRole);
				break;
			case "director":
				Role directorRole = roleRepository.findByName(RoleName.DIRECTOR)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(directorRole);
				break;
			case "hr_manager":
				Role hrManagerRole = roleRepository.findByName(RoleName.HR_MANAGER)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(hrManagerRole);
				break;
			case "manager":
				Role managerRole = roleRepository.findByName(RoleName.MANAGER)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(managerRole);
				break;
			case "accountant":
				Role accountantRole = roleRepository.findByName(RoleName.ACCOUNTANT)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(accountantRole);
				break;
			case "hr":
				Role hrRole = roleRepository.findByName(RoleName.HR)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(hrRole);
				break;
			case "employee":
				Role employeeRole = roleRepository.findByName(RoleName.EMPLOYEE)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(employeeRole);
				break;
			case "trainee":
				Role traineeRole = roleRepository.findByName(RoleName.TRAINEE)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(traineeRole);
				break;
			case "trainer":
				Role trainerRole = roleRepository.findByName(RoleName.TRAINER)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(trainerRole);
				break;
				
			default:
				Role userRole = roleRepository.findByName(RoleName.EMPLOYEE)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(userRole);
			}
		});

		login.setRoles(roles);
		loginRepository.save(login);
 
		return new ResponseEntity<>(new ResponseMessage("User registered successfully!"), HttpStatus.OK);
	}
	
//	@GetMapping("/{username}")
//	public Optional<Login> findByUsername(@PathVariable String username){
//		return loginRepository.findByUsername(username);
//	}
	@GetMapping("/userid/{id}")
	public Optional<Login> findByUserId(@PathVariable Integer id){
		return loginRepository.findUserById(id);
	}
}