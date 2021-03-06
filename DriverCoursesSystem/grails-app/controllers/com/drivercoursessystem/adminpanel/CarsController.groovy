package com.drivercoursessystem.adminpanel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CarsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cars.list(params), model:[carsInstanceCount: Cars.count()]
    }

    def show(Cars carsInstance) {
        respond carsInstance
    }

    def create() {
        respond new Cars(params)
    }

    @Transactional
    def save(Cars carsInstance) {
        if (carsInstance == null) {
            notFound()
            return
        }

        if (carsInstance.hasErrors()) {
            respond carsInstance.errors, view:'create'
            return
        }

        carsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cars.label', default: 'Cars'), carsInstance.id])
                redirect carsInstance
            }
            '*' { respond carsInstance, [status: CREATED] }
        }
    }

    def edit(Cars carsInstance) {
        respond carsInstance
    }

    @Transactional
    def update(Cars carsInstance) {
        if (carsInstance == null) {
            notFound()
            return
        }

        if (carsInstance.hasErrors()) {
            respond carsInstance.errors, view:'edit'
            return
        }

        carsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cars.label', default: 'Cars'), carsInstance.id])
                redirect carsInstance
            }
            '*'{ respond carsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Cars carsInstance) {

        if (carsInstance == null) {
            notFound()
            return
        }

        carsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cars.label', default: 'Cars'), carsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cars.label', default: 'Cars'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
