package com.drivercoursessystem.adminpanel

import java.awt.Checkbox;

class Teacher {
	
	String firstName
	
	String middleName
	String lastName
	public String getLastName() {
		return lastName;
	}
	String toString() {
		"$firstName $middleName $lastName"
	}
	//static hasMany=[course:Course,cars:Cars]
	//static belongsTo=[Course]
	static hasMany=[cars:Cars,courses:Course]
	
	
    static constraints = {
		firstName()
		middleName()
		lastName()
    }
	//Checkbox check;

	
}
