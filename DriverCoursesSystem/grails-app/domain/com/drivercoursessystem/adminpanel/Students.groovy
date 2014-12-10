package com.drivercoursessystem.adminpanel

class Students {
	
	String firstName;
	String middleName;
	String lastName;
	String toString() {
	"$firstName $middleName $lastName"
	};
	String email;
	String mobilePhone;
	String homePhone;
	
	
    static constraints = {
		firstName()
		middleName()
		lastName()
		email(email:true)
		mobilePhone minSize: 13,maxSize: 13
		homePhone minSize: 12,maxSize: 12
		
		
    }
}
