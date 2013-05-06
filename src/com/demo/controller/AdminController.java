package com.demo.controller;

import com.demo.model.Admin;
import com.jfinal.core.Controller;

public class AdminController extends Controller{
	public void login(){
		final String username = getPara("username");
		final String password = getPara("password");
		final String username1 = getPara(0);
		final String password1 = getPara(1);
		System.out.println(getPara(0));
		System.out.println("name"+username+"pass"+password+"name1"+username1+"pass1"+password1);
		Admin admin = new Admin();
		admin = Admin.dao.findFirst("select * from admin where username=? and password = ?",username,password);
		System.out.println(admin);
		if (admin!= null && admin.get("username").equals("admin")){
			render("success.jsp");
		}else{
			setAttr("msg","密码错误");
			render("login.jsp");
		}
	}
}
