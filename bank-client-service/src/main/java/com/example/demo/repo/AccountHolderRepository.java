package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.AccountHolder;

@Repository
public interface AccountHolderRepository extends JpaRepository<AccountHolder, Long> {

	AccountHolder findByAccountNumber(long accountNumber);

	
	
	
}
