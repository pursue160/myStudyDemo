package com.demo.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController {
	private Log log = LogFactory.getLog(HomeController.class);
	
    @RequestMapping(value = "index")
    public String Index() {
    	log.info("hello my friend");
        return "/jsp/index";
    }

}