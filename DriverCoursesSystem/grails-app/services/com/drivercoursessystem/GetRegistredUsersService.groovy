package com.drivercoursessystem

import com.drivercoursessystem.adminpanel.Students
import com.drivercoursessystem.userpanel.RegistrationForm

import grails.transaction.Transactional

@Transactional
class GetRegistredUsersService {

	def serviceMethod(int ids) {
		def demo = RegistrationForm.get(ids)
		def RegistrationForm
		String fName=demo.firstName
		String lName=demo.lastName
		int yearss=demo.years
		String gend=demo.gender
		String emails=demo.email
		String mPhone=demo.mobilePhone
		String courses=demo.course
		
		new Students(
			firstName:fName,
			lastName:lName,	
			years:yearss,
			gender:gend,
			email:emails,
			mobilePhone:mPhone,
			course:courses).save();
		
			}
	
}
