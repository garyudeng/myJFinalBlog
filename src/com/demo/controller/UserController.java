package com.demo.controller;

import com.demo.interceptor.UserInterceptor;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

@Before(UserInterceptor.class)
public class UserController extends Controller{
	
	public void login(){
		System.out.println(getPara("user.username"));
	}

}