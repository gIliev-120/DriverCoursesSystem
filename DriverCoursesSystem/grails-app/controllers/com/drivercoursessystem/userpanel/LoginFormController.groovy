package com.drivercoursessystem.userpanel

class LoginFormController {
	
 def scaffold=LoginForm
	
	  def authenticate = {
	    def user = RegistrationForm.findByEmailAndPassword(params.email, params.password)
		if(user){
		  session.user = user
	      render(view:"StudentInfo");
		  
	    }else{
			
	      render "Sorry Please try again."
	      }
 }
	  
  /*def logout = {
    flash.message = "Goodbye ${session.user.name}"
    session.user = null
    redirect(controller:"entry", action:"list")      
  }  */
}

