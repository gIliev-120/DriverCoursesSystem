package com.drivercoursessystem.adminpanel

import org.hibernate.annotations.Formula;


class Students {
	String firstName
	String lastName
	int years
	String email
	String mobilePhone
	Double paidSum
	Double restOfSum
	int numberOfPaidExtraDrivingHours
	Double paidExtraDrivingHoursSum


	static belongsTo = [courses: Course]

	String toString() {
		"$firstName $lastName"
	}


	static constraints = {
		firstName()
		lastName()
		years(range: 17..60)
		email(email: true)
		mobilePhone(size: 13..13)

	}
}