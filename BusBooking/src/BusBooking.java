import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Bus{
	private int busId;
	private String boarding;
	private String destination;
	private int price;
	private int noOfSeats;
	
	
	public Bus() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bus(int busId, String boarding, String destination, int price, int noOfSeats) {
		super();
		this.busId = busId;
		this.boarding = boarding;
		this.destination = destination;
		this.price = price;
		this.noOfSeats = noOfSeats;
	}
	public int getBusId() {
		return busId;
	}
	public void setBusId(int busId) {
		this.busId = busId;
	}
	public String getBoarding() {
		return boarding;
	}
	public void setBoarding(String boarding) {
		this.boarding = boarding;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getNoOfSeats() {
		return noOfSeats;
	}
	public void setNoOfSeats(int noOfSeats) {
		this.noOfSeats = noOfSeats;
	}
	
	
	List<Bus> list=new ArrayList<>();
	
	public boolean add(Bus bus) {
		return list.add(bus);
	}
	
}

class Booking{
	public void busDetails() {
		
		Bus chennai=new Bus(111, "Chennai", "bangalore", 2000, 22);
		Bus mumbai=new Bus(222, "Mumbai", "Pune", 1500, 28);
		Bus chennaiBus2=new Bus(333, "Chennai", "hyderbad", 1000, 10);
		Bus bus=new Bus();
		bus.add(chennai);
		bus.add(mumbai);
		bus.add(chennaiBus2);
		System.out.println("BusId  Boarding  Destination   price  Noofseats");
		System.out.println("111, Chennai, bangalore, 2000, 22");
		System.out.println("222, Mumbai, Pune, 1500, 28");
		System.out.println("333, Chennai, hyderbad, 1000, 10");
		
	}
	public void bookSeats(int id, String boarding, String destination, int price, int noofseat) {
		//screen 1------------------------
				if(noofseat>5) {
					if(id==111) {
						int discount=(2000/10)*noofseat;
						 price=noofseat*2000;
						System.out.println("Discount:"+discount);
						int totalPrice= price-discount;
						System.out.println("Total to pay:"+totalPrice);
					}
					if(id==222) {
						int discount=(1500/10)*noofseat;
						 price=noofseat*1500;
						System.out.println("Discount:"+discount);
						int totalPrice= price-discount;
						System.out.println("Total to pay:"+totalPrice);
					}
					if(id==333) {
						int discount=(1000/10)*noofseat;
						 price=noofseat*1000;
						System.out.println("Discount:"+discount);
						int totalPrice= price-discount;
						System.out.println("Total to pay:"+totalPrice);
					}
				}
				//screen2-------------------------------
				else {
					int discount=0;
					System.out.println("Discount: "+discount);
					if(id==111) {
						 price=noofseat*2000;
						System.out.println("Total to pay:"+price);
					}
					if(id==222) {
						 price=noofseat*1500;
						System.out.println("Total to pay:"+price);
					}
					if(id==333) {
						 price=noofseat*1000;
						System.out.println("Total to pay:"+price);
					}
				}
				//screen 3---------------------------------
				if(noofseat ==0) {
					System.out.println("Choose seats for Booking!!!!!!!!");
				}
				
//				//screen 4---------------------
//				if(id!=111 || id!=222 || id!=333)  {
//					System.out.println("Booking is not success due to incorrect bus id");
//				}
				
	}
}


public class BusBooking {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Booking book=new Booking();
		
		
		book.busDetails();
		
		// adding default bus details which cant be edited
		
		 
		Scanner sc=new Scanner(System.in);
		
		
	
		System.out.println("Enter the busId");
		int id=sc.nextInt();
		
		
		System.out.println("Enter Boarding point: ");
		String boarding=sc.next();
	//	System.out.println(boarding);

		 System.out.println("Enter destination point: ");
		 String destination=sc.next();
	//		System.out.println(destination);
			
			
		
		 System.out.println("Price");
		 int price=sc.nextInt();
		 
		// System.out.println(price);
	
		System.out.println("Enter no of seats:");
		int noofseat=sc.nextInt();
	
		book.bookSeats(id, boarding, destination, price, noofseat);
		
		sc.close();
		
		
		
		
		
		
	}

}
