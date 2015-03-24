package com.drivercoursessystem.adminpanel

class Cars {
	String make
	String model
	String registrationPlate
	String toString(){
		"$model-$registrationPlate"
	}
	

	
    static constraints = {
		make()
		model()
		registrationPlate(unique: true)
    }
}
