package com.drivercoursessystem.adminpanel

class Payments {
    Students student
    Double paidSum
    Double restOfSum
    int numberOfExtraDrivingHours
    Double paidExtraDrivingHours
    Course course

    static constraints = {
        student(nullable: false)
        paidSum(min:0d,nullable:false)
        restOfSum(min:0d,nullable: false)
        numberOfExtraDrivingHours(min: 0)
        paidExtraDrivingHours(min: 0d,nullable: false)
        course(nullable: false)


    }
}
