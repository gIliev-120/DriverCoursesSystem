package com.drivercoursessystem.userpanel

import com.drivercoursessystem.adminpanel.Course;

class RegistrationForm {
	
	
	String username
	String password
	String email
	String firstName
	String lastName
	String gender
	int years
	String mobilePhone
	Course course
	
	
	
	
    static constraints = {
		username size: 3..20, unique: true, nullable: false
		password size: 6..8, blank: false, validator: { password, Register ->
			password != Register.username
		}
		email(email:true)
		firstName()
		lastName()
		gender (inList:["Male", "Female"])
		years(range:17..60)
		mobilePhone(size:13..13)
		course ()
    }
	
}
