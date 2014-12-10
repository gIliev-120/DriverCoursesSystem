package drivercoursessystem

import com.drivercoursessystem.adminpanel.Cars;

import grails.transaction.Transactional

@Transactional
class DemoService {
	Cars Cars
    def serviceMethod() {
		 

    }
	
	def listCars(){
		println Cars.make[1]
	}
}
