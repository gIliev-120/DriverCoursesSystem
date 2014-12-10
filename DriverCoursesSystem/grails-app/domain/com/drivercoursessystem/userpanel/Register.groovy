package com.drivercoursessystem.userpanel

class Register {
	
	String username
	String password
	String email
	String firstName
	String middleName
	String lastName
	String gender
	String years
	String course
	String mobilePhone
	
	
	
    static constraints = {
		username size: 3..20, unique: true, nullable: false
		password size: 6..8, blank: false, validator: { password, Register ->
			password != Register.userName
		}
		
		email(email:true)
		mobilePhone minSize: 13,maxSize: 13
		course inList:["A","B"]
		gender inList:["Male","Female"]
    }
}
