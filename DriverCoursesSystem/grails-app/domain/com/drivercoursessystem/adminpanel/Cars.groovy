package com.drivercoursessystem.adminpanel

class Cars {
	String make
	String model
	String toString() {
	"$make $model"
	}
    static constraints = {
		make()
		model()
    }
}
