package com.drivercoursessystem.userpanel

class LoginForm {
	String email
	String password
	
    static constraints = {
		email(email:true)
		password(blank:false,password:true)
    }
}
