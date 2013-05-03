package com.demo.controller;

import com.demo.model.Cateroge;
import com.jfinal.core.Controller;

public class CaterogeController extends Controller{
	public void index(){
		renderJson(Cateroge.dao.find("select * from cateroge"));
	}
}