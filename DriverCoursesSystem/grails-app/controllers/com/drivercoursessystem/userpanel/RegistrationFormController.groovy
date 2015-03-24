package com.drivercoursessystem.userpanel



import static org.springframework.http.HttpStatus.*
import com.drivercoursessystem.GetRegistredUsersService
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegistrationFormController {
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def GetRegistredUsersService
	//GetRegistredUsersService myService
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RegistrationForm.list(params), model:[registrationFormInstanceCount: RegistrationForm.count()]
		
		
		
    }

    def show(RegistrationForm registrationFormInstance) {
        respond registrationFormInstance
    }

    def create() {
        respond new RegistrationForm(params)
    }

    @Transactional
    def save(RegistrationForm registrationFormInstance) {
        if (registrationFormInstance == null) {
            notFound()
            return
        }

        if (registrationFormInstance.hasErrors()) {
            respond registrationFormInstance.errors, view:'create'
            return
        }

        registrationFormInstance.save flush:true
        //println registrationFormInstance.email;



		int myID=registrationFormInstance.id



        sendMail {
            to registrationFormInstance.email
            subject "Записване за курс"
            body "Здравейте ${registrationFormInstance.firstName} ${registrationFormInstance.lastName}!" +
                    " Вие се записахте за курс категория ${registrationFormInstance.course}." +
                    "Курсът ви започва на ${registrationFormInstance.course.startCourse.getDateString()} и трябва да заввърши на ${registrationFormInstance.course.endCourse.getDateString()}." +
                    "Ако не извършите плащане до 3 работни дни считано от ${new Date().getDateString()} , вашата регистрация ще се анулира." +
                    "За повече информация 28943298"

        }

		GetRegistredUsersService.serviceMethod(myID)
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'registrationForm.label', default: 'RegistrationForm'), registrationFormInstance.id])
                redirect registrationFormInstance
            }
            '*' { respond registrationFormInstance, [status: CREATED] }
		
        }
    }

    def edit(RegistrationForm registrationFormInstance) {
        respond registrationFormInstance
    }

    @Transactional
    def update(RegistrationForm registrationFormInstance) {
        if (registrationFormInstance == null) {
            notFound()
            return
        }

        if (registrationFormInstance.hasErrors()) {
            respond registrationFormInstance.errors, view:'edit'
            return
        }

        registrationFormInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RegistrationForm.label', default: 'RegistrationForm'), registrationFormInstance.id])
                redirect registrationFormInstance
            }
            '*'{ respond registrationFormInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RegistrationForm registrationFormInstance) {

        if (registrationFormInstance == null) {
            notFound()
            return
        }

        registrationFormInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RegistrationForm.label', default: 'RegistrationForm'), registrationFormInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'registrationForm.label', default: 'RegistrationForm'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
