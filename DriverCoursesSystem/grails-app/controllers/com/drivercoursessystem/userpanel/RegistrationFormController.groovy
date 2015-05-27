package com.drivercoursessystem.userpanel

import com.drivercoursessystem.AddRegistredUsersInStudentsService

import static org.springframework.http.HttpStatus.*

import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegistrationFormController {
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def AddRegistredUsersInStudentsService
	//GetRegistredUsersService myService


//    def login = {
//        if (session.user) {
//            redirect(controller:'topic', action:'list')
//        }
//    }

//    def handleLogin = {
//        def user = RegistrationForm.findByEmail(params.email)
//        if (!user) {
//            flash.message = "User not found for email ${params.email}"
//            redirect(action:'login')
//            return
//        }
//
//        if (user.password != params.password.encodeAsPassword()) {
//            flash.message = "Incorrect password for ${params.email}"
//            redirect(action:'login')
//            return
//        }
//
//        session.user = user
//        redirect(controller:'topic', action:'list')
//    }

    def register = {
        render(view:"create");
    }

    def handleRegistration = {
        def user = new RegistrationForm(params)
//        def passbeforehash=user.password;
        user.password = params.password.encodeAsMD5()
        if(RegistrationForm.findByEmail(params.email)){
            flash.message = "Регистрация с този email вече съществува."
            redirect(action:'register')
        }else{
            user.save();

             int myID=user.id
        AddRegistredUsersInStudentsService.addUsers(myID)


        sendMail {
            to user.email
            subject "Записване за курс"
            body "Здравейте ${user.firstName} ${user.lastName}!" +
                    " Вие се записахте за курс категория ${user.course}." +
                    "Курсът ви започва на ${user.course.startCourse.getDateString()} и трябва да заввърши на ${user.course.endCourse.getDateString()}." +
                    "Моля извършете плащане до 3 работни дни считано от ${new Date().getDateString()}." +
                    "За повече информация тел. (02) 28943298"

        }


            redirect(controller:'loginForm',action:'index')

        }

    }
}




