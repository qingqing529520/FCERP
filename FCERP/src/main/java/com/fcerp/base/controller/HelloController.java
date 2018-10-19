package com.fcerp.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@RequestMapping("hello")
	public ModelAndView hello() {
		ModelAndView mv = new ModelAndView("hello");
		mv.addObject("msg", "this is a test!");
		return mv;
	}
}
