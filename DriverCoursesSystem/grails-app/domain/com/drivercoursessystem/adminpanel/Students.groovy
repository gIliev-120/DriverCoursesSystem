package com.drivercoursessystem.adminpanel

class Students {
	String firstName
	String lastName
	int years
	String gender
	String email
	String mobilePhone
	String course
	
	String fullName(){
		"$firstName $lastName"
	}
	
    static constraints = {
    	firstName()
		lastName()
		years(range:17..60)
		gender(inList:["Male","Female"])
		email(email:true)
		mobilePhone(size:13..13)
		course()
	}
}
