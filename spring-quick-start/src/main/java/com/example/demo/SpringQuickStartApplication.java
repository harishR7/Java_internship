package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.example.demo.model.Bill;
import com.example.demo.model.Customer;
import com.example.demo.model.CustomerList;
import com.example.demo.model.Invoice;
import com.example.demo.model.Product;
import com.example.demo.model.Student;
import com.example.demo.model.Teacher;

@SpringBootApplication

public class SpringQuickStartApplication {

	/*public static void main(String[] args) {
		ApplicationContext ctx=SpringApplication.run(SpringQuickStartApplication.class, args);
		///////////////Using Contructor//////////////////
		
	System.out.println(ctx.getBean("maddy"));
		System.out.println(ctx.getBean("teacher"));
		
		
		// When using id need to cast to specific bean since
		// return type of getBean Method is Object
		Student ram =(Student) ctx.getBean("ram");
		
		//casting not requires buth there should be only one bean of that type
		// will throw Exceptiojn
		Student shyam=ctx.getBean(Student.class);
		
		
	
		
		//When more than one bean in the same field 
		Teacher loki=(Teacher) ctx.getBean("loki");
		
		
		
    //When More than One Bean of the same Type available
	//should use id and calss name
	Teacher teacher=ctx.getBean("teacher",Teacher.class);
	
	teacher.setId(498);
	teacher.setName("Mercy");
	teacher.setSubject("Maths");
	
	
	
	System.out.println(shyam);
	System.out.println(teacher);
	System.out.println(loki);
		
	*/
///////////////////////////////////////////////////////////////////////////////////////////	
public static void main(String[] args) {
	
	
	ApplicationContext ctx=SpringApplication.run(SpringQuickStartApplication.class, args);

	
//	Customer cust=(Customer) ctx.getBean("suresh");
//
//	Product pro=(Product) ctx.getBean("tv");

//	System.out.println(cust);
//
//	System.out.println(pro);

	Invoice invoi=ctx.getBean(Invoice.class);
	
	System.out.println(invoi);
	
	Bill bill=ctx.getBean(Bill.class);
	System.out.println("Customer="+bill.getCustomer());
	System.out.println("Product="+bill.getProduct());
	
	CustomerList list=ctx.getBean(CustomerList.class);
	list.getCustlist().forEach(System.out::println);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
	
	
	
}
