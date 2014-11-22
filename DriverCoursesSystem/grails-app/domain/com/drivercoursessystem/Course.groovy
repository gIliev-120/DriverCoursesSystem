package com.drivercoursessystem

import com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory.Default;

//import org.grails.datastore.gorm.finders.MethodExpression.InList;

class Course {
	//int uniqueNumber
	
	String category
	Date startCourse
	Teacher teacher
	
	//String students
	Date endCourse
	//def tName=teacher.getLastName()
	def c= new GregorianCalendar()
	String uniqueNumebr=String.format( "%04d",c.get(Calendar.YEAR))
	//String nigga = endCourse.getEndCourse()
	//String teacher
	String toString() {
		"$category"
		}
	//static hasMany =[Students:Students]
	
    static constraints = {
    category inList:["A","B","C"]
	}
}
