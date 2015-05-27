package com.drivercoursessystem.userpanel

import com.bloomhealthco.jasypt.GormEncryptedStringType
import com.drivercoursessystem.adminpanel.Course;

class RegistrationForm {
	
	

	String password
	String email
	String firstName
	String lastName

	int years
	String mobilePhone
	Course course
	
	
	
	
    static constraints = {

		password  blank: false
		email(email:true,unique: true)
		firstName()
		lastName()
		years(range:17..60)
		mobilePhone(size:13..13)
		course ()
    }

}
