package drivercoursessystem
import com.drivercoursessystem.adminpanel.Course


class LoginTagLivTagLib {
	def loginControl = {
		if(session.user){
		  out << "Hello ${session.user.firstName} ${session.user.lastName} <br/>"
		  out << "Your course Category is: ${session.user.course} <br/>"
		  
		 def CourseInfo=Course.get(session.user.course.id);
		 String theoryTeachers=CourseInfo.theoryTeacher;
		 String drivingTeachers=CourseInfo.drivingTeacher;
		 String courseStartDate=CourseInfo.startCourse;
		 String courseEndDate=CourseInfo.endCourse;
		 String yourCours="Вашият курс започва"
		 out<<"Your tTeacher is - ${theoryTeachers} <br/>"
		 out<<"Your driving teacher is - ${drivingTeachers} <br/>"
		 out<<"${yourCours} - ${courseStartDate}"
		 out<<("Вашият курс завършва на ${courseEndDate}")
		 
		   //out << session.user.findById()
		  //out << """[${link(action:"logout", controller:"user"){"Logout"}}]"""
    } else {
      //out << """[${link(action:"login", controller:"user"){"Login"}}]"""
			println"Sorry"      
		}
	  }
}
