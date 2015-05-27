package drivercoursessystem

import com.drivercoursessystem.adminpanel.Students

class   PreservingHours {
    Date drivingdate;
    String drivinghours;
    Students student;
    static constraints = {
        drivinghours inList: ['9:00-10:00','11:00-12:00']
    }
    static mapping = {
        drivingdate sqlType:"Date"
    }
}
