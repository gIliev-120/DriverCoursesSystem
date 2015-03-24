package com.drivercoursessystem.adminpanel

class EmployeeLogin {
	String username
	String password
    static constraints = {
		username(blank:false,)
		password(blank:false)
    }
}
