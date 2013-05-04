package com.demo.common;

import com.jfinal.core.Controller;

/**
 * CommonController
 */
public class CommonController extends Controller {
	
	public void index() {
		redirect("/post");
	}
	public void aboutme() {
		render("aboutme.jsp");
	}
	
}