package com.drivercoursessystem

import com.drivercoursessystem.adminpanel.Students
import com.drivercoursessystem.userpanel.RegistrationForm

import grails.transaction.Transactional

@Transactional
class GetRegistredUsersService {

	def serviceMethod(int ids) {
		def registeredStudent = RegistrationForm.get(ids)
		def RegistrationForm
		String fName=registeredStudent.firstName
		String lName=registeredStudent.lastName
		int yearss=registeredStudent.years
		String emails=registeredStudent.email
		String mPhone=registeredStudent.mobilePhone
		String courses=registeredStudent.course
		Double pSum=0;
		Double rOfSum=0;
		int nOfPaidExtraDrivingHours=0;
		Double pExtraDrivingHoursSum=0;
		new Students(
			firstName:fName,
			lastName:lName,
			years:yearss,
			email:emails,
			mobilePhone:mPhone,
			course:courses,
			paidSum: pSum,
			restOfSum: rOfSum,
			numberOfPaidExtraDrivingHours: nOfPaidExtraDrivingHours,
			paidExtraDrivingHoursSum: pExtraDrivingHoursSum).save();

			}
	
}
