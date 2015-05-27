package com.drivercoursessystem

import com.drivercoursessystem.adminpanel.Students
import com.drivercoursessystem.userpanel.RegistrationForm
import grails.transaction.Transactional

@Transactional
class AddRegistredUsersInStudentsService {

    def addUsers(int ids) {
        def currentStudent=RegistrationForm.get(ids)
        String fName_=currentStudent.firstName
        String lName_=currentStudent.lastName
        int yearsz_=currentStudent.years
        String email_=currentStudent.email
        String mobilePhone_=currentStudent.mobilePhone
        int courseId=currentStudent.course.id
        Double paidSum_= 0.0
        Double restOfSum_=0.0
        int numberOfPaidExtraDrivingHours_=0
        Double paidExtraDrivingHoursSum_=0

            new Students(
                firstName:fName_,
                lastName:lName_,
                years:yearsz_,
                email:email_,
                mobilePhone:mobilePhone_,
                courses:courseId,
                paidSum:paidSum_,
                restOfSum:restOfSum_,
                numberOfPaidExtraDrivingHours:numberOfPaidExtraDrivingHours_,
                paidExtraDrivingHoursSum:paidExtraDrivingHoursSum_).save();




    }
}
