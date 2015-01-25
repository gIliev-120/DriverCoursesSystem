package drivercoursessystem
import com.drivercoursessystem.adminpanel.Course


class LoginTagLivTagLib {
	def loginControl = {
		if(session.user){
		  out << "Hello ${session.user.firstName} ${session.user.lastName} <br/>"
		  out << "Your course Category is: ${session.user.course} <br/>"
		  
		 def teachersInfo=Course.get(session.user.course.id);
		 String theoryTeachers=teachersInfo.theoryTeacher;
		 String drivingTeachers=teachersInfo.drivingTeacher;
		 out<<"Your tTeacher is - ${theoryTeachers} <br/>"
		 out<<"Your driving teacher is - ${drivingTeachers} <br/>"
		 
		   //out << session.user.findById()
		  //out << """[${link(action:"logout", controller:"user"){"Logout"}}]"""
    } else {
      //out << """[${link(action:"login", controller:"user"){"Login"}}]"""
			println"Sorry"      
		}
	  }
}
