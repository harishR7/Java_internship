package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.example.demo.entity.AccountHolder;
import com.example.demo.service.AdminService;

@RestController
@RequestMapping(path = "/api/v1/details")
public class AdminController {

	
	@Autowired
	private AdminService service;
	
	@Autowired
	private RestTemplate template;
	
	
	@GetMapping(path = "/{id}")
	public String getBalance(@PathVariable("id") long id) {
		return this.template.getForObject("http://BANK-CLIENT-SERVICE/api/v1/accountholder/balance/"+id,String.class);
	}
	
}
