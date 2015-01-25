package com.drivercoursessystem.adminpanel

class Course {
	String category
	Date startCourse
	Date endCourse
	Teacher drivingTeacher
	Teacher theoryTeacher
	
	
	
	
	String toString(){
		"$category"
	}
	String courseDuration(){
		"$startCourse-$endCourse"
	}
	
    static constraints = {
		category inList:["A","B","C"]
		startCourse()
		endCourse()
		
		
    }
}
