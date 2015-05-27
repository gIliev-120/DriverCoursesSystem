package com.drivercoursessystem.userpanel

import com.drivercoursessystem.adminpanel.Course
import com.drivercoursessystem.adminpanel.Students
import drivercoursessystem.PreservingHours

class LoginFormController {
	
 def scaffold=LoginForm


	  def authenticate = {

		  def user = RegistrationForm.findByEmailAndPassword(params.email, params.password.encodeAsMD5())
		  if(user){
			session.user = user
		    String userNames = session.user.firstName + " " + session.user.lastName

			def CourseInfo = Course.get(session.user.course.id);
			String theoryTeachers = CourseInfo.theoryTeacher;
			String drivingTeachers = CourseInfo.drivingTeacher;
			Date courseStartDate = CourseInfo.startCourse;
			Date courseEndDate = CourseInfo.endCourse;

			render(view: "StudentInfo", model: [uS:user,usNames: userNames, Tteacher: theoryTeachers, dTeacher: drivingTeachers, cSd: courseStartDate, cEd: courseEndDate]);
		  }else {
			  flash.message = " Грешен потребител/парола."
			  session.user = null
			  redirect(controller: 'loginForm', action: 'index')
		  }

 }
	def reserveHours(){

	def preservHour= new PreservingHours(params)
	render(view:"reserveHours",model:[resrv:preservHour])

	}
	def handleHours(PreservingHours preservingHoursInstance){
		def student_ = Students.findByEmail(session.user.email);
		preservingHoursInstance.student=student_;
		preservingHoursInstance.save()
		//redirect(controller:"loginForm",action:yourHours(student_))
		yourHours(student_)
	}
	def yourHours(Students studentZ){
		println(studentZ)
		def studentHours
		if(studentZ){
			studentHours=PreservingHours.findAllByStudent(studentZ)
		}else{
			def studdent = Students.findByEmail(session.user.email);
			studentHours=PreservingHours.findAllByStudent(studdent)
		}
		println(studentHours)
		render(view:'yourHours',model:[studHours:studentHours])
	}
	  
  def logout = {
//	flash.message = "Довиждане ${session.user.firstName+" "+session.user.lastName}"
    session.user = null
    redirect(controller:"loginForm", action:"index")
  }
	def again(){
		render(view: "StudentInfo", model: [uS:session.user])
	}

}

