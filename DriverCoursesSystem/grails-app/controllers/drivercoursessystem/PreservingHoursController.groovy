package drivercoursessystem


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PreservingHoursController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PreservingHours.list(params), model: [preservingHoursInstanceCount: PreservingHours.count()]
    }

    def show(PreservingHours preservingHoursInstance) {
        respond preservingHoursInstance
    }

    def create() {
        respond new PreservingHours(params)
    }

    @Transactional
    def save(PreservingHours preservingHoursInstance) {
        if (preservingHoursInstance == null) {
            notFound()
            return
        }

        if (preservingHoursInstance.hasErrors()) {
            respond preservingHoursInstance.errors, view: 'create'
            return
        }

        preservingHoursInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'preservingHours.label', default: 'PreservingHours'), preservingHoursInstance.id])
                redirect preservingHoursInstance
            }
            '*' { respond preservingHoursInstance, [status: CREATED] }
        }
    }

    def edit(PreservingHours preservingHoursInstance) {
        respond preservingHoursInstance
    }

    @Transactional
    def update(PreservingHours preservingHoursInstance) {
        if (preservingHoursInstance == null) {
            notFound()
            return
        }

        if (preservingHoursInstance.hasErrors()) {
            respond preservingHoursInstance.errors, view: 'edit'
            return
        }

        preservingHoursInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PreservingHours.label', default: 'PreservingHours'), preservingHoursInstance.id])
                redirect preservingHoursInstance
            }
            '*' { respond preservingHoursInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PreservingHours preservingHoursInstance) {

        if (preservingHoursInstance == null) {
            notFound()
            return
        }

        preservingHoursInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PreservingHours.label', default: 'PreservingHours'), preservingHoursInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'preservingHours.label', default: 'PreservingHours'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
