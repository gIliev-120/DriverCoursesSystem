package drivercoursessystem

import com.drivercoursessystem.adminpanel.*




class DrivingSchedules implements Serializable {
	Teacher teachers
	Date calendarDate
	Students student
	
    static constraints = {
    }
	
	static mapping = {
		table 'DRIVING_SCHEDULES'
		//supposed to make a composite PK
		version false
		id composite:['calendarDate']
		columns{
			teachers column:'TEACHERS_ID'
			calendarDate column:'CALENDAR_DATE'
			student column:'STUDENT_ID'
		}
	}
	def getPK() {
		["calendarDate":calendarDate, "hours":hours]
	}
}
