package com.drivercoursessystem.adminpanel

class Employee {
	String username
	String  password
	String role
	Teacher teacher
    static constraints = {
		username size: 3..20, unique: true, nullable: false
		password blank: false,password:true
		role(inList:["Администратор","Инструктор","Счетоводител"])
		teacher(nullable: true)
		}
    }

