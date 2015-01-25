package com.drivercoursessystem.adminpanel

class Teacher {
	
	String firstName
	String lastName
	String subject
	String toString() {
		"$firstName $lastName"
	}
	Cars car
		
	static constraints = {
		car(nullable:true)
		firstName()
		lastName()
		subject(inList:["Driving","Theory"])
	}
    
}
