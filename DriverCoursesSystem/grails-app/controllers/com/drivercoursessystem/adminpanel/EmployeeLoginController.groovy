package com.drivercoursessystem.adminpanel

class EmployeeLoginController {
    def scaffold = EmployeeLogin

    def authenticate = {
        if (params.username == "adm" && params.password == "adm") {
            render(view: "admin")
        } else {
            def empl = Employee.findByUsernameAndPassword(params.username, params.password)
            if (empl) {
                session.user = empl

                if (request.method == "GET") {
                    def getedCourseValue = params.courseValue
                    int getedCoursesId = params.int('coursesId')

                    def results = Students.withCriteria {
                        courses {
                            eq('id', getedCoursesId)
                        }
                    }
                    println results
                    render(contentType: 'text/json') {
                        [
                                'results': results,
                                'status' : results ? "OK" : "Nothing present"
                        ]
                    }


                }
                def teacherInfo = Teacher.get(session.user.teacher.id);
                String yourName = "${teacherInfo.firstName} ${teacherInfo.lastName}"

                def teacherCourseInfo = Course.findAllWhere(drivingTeacher: teacherInfo);
                if (empl.role == "Инструктор") {
                    render(view: "teacherSchedule", model: [name: yourName, courses: teacherCourseInfo])
                } else {
                    render(view: "payments/index")
                }

            } else {

                render(view: "index")
            }
        }
    }


}
