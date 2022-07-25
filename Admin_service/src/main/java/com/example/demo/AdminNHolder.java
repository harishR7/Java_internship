package com.example.demo;

import java.util.List;

import org.springframework.stereotype.Component;

import com.example.demo.entity.AccountHolder;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

@Data
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@Component
public class AdminNHolder {

	
	Admin admin;
	List<AccountHolder> accountList;
}
