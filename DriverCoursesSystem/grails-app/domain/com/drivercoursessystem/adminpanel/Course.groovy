package com.drivercoursessystem.adminpanel



class Course {
	int id
	String category

	Date startCourse
	Date endCourse
	Teacher drivingTeacher
	Teacher theoryTeacher
	Double price
	
	static hasMany=[students:Students]
	//def startCourseDate = startCourse.getDateString()
	//def endCourseDate= endCourse.getDateString()
	String toString(){
		"$category"
	}

	// - ${startCourse.getDateString()} -${endCourse.getDateString()}

	
    static constraints = {
	    category(inList:["А","Б","А+Б"])
		startCourse(min: new Date())
		endCourse(validator: { val, obj ->
			val?.after(obj.startCourse)
		})
		
		
    }
}	