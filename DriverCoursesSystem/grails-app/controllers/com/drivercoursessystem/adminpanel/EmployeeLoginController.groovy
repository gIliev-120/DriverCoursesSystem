package com.drivercoursessystem.adminpanel

import grails.converters.JSON

class EmployeeLoginController {
    def scaffold = EmployeeLogin

    def index(){
        render(view:'index');
    };

    def authenticate = {
        if (params.username == "adm" && params.password == "adm") {
            render(view: "admin")
        }else{
            def empl = Employee.findByUsernameAndPassword(params.username, params.password.encodeAsMD5())
            if (empl) {
                session.user = empl;
                switch (empl.role) {
                    case 'Инструктор':
                        def teacherInfo = Teacher.get(session.user.teacher.id);
                        String yourName = "${teacherInfo.firstName} ${teacherInfo.lastName}"
                        def teacherCourseInfo = Course.findAllWhere(drivingTeacher: teacherInfo);
                        def results = Students.withCriteria {
                            courses {
                                eq('id', teacherCourseInfo.id.first())
                            }
                        }

                        render(view: "teacherSchedule", model: [name: yourName, courses: teacherCourseInfo,studs:results]);
                        break;
                    case 'Счетоводител':
                        redirect(controller:'Payments',action:'index')
                        break;
                    case 'Администратор':
                        render(view: "admin");
                        break;
                }
            }else{
                flash.message = " Грешен потребител/парола."
                session.user = null
                redirect(controller:'EmployeeLogin',action:'/index')
            }
        }
    }

    def logout = {
        session.user = null
        render(view: "index")

    }
    def adminredirect(){
        render(view:"admin")
    }
    def demoAjax(){
        int getedCoursesId=Integer.parseInt(params.key)
        def results = Students.withCriteria {
            courses {
                      eq('id', getedCoursesId)
            }
        }
        println results
        render results as JSON
    }
}