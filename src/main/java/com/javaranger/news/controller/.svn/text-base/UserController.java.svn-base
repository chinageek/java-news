package com.javaranger.news.controller;


import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.javaranger.news.pojo.User;
import com.javaranger.news.service.UserService;

@Controller()
public class UserController {
	@Resource(name="userService")
	private UserService service;

	@RequestMapping("/")
	public ModelAndView welcome(){
		ModelAndView mv=new ModelAndView();
		List<User> list=service.findByLimit(30);
		mv.addObject("list", list);
		mv.setViewName("welcome");
		return mv;
	}
	@RequestMapping("/handleinseart")
	public ModelAndView handleInseart(@Valid User user,BindingResult result){
		ModelAndView mv=new ModelAndView();
		if(result.hasFieldErrors()){
			List<FieldError> list1=result.getFieldErrors();
			List<String> list=new LinkedList<String>();
			Iterator< FieldError> it=list1.iterator();
			while(it.hasNext()){
				FieldError f=(FieldError)it.next();
				String s=f.getDefaultMessage();
				list.add(s);
			}
			mv.addObject("errors",list);
			mv.setViewName("error");
			return mv;
		}else{
			service.insertUser(user);
			mv.setView(new RedirectView("/"));
			return mv;
		}	
	}
	@RequestMapping("/addpage")
	public String addPage(){
		return "addpage";
	}
	@RequestMapping("/updatepage")
	public String updatePage(){
		return "updatepage";
	}
	@RequestMapping("/handleupdate")
	public ModelAndView handleUpdate(@Valid User user,BindingResult result){
		ModelAndView mv=new ModelAndView();
		if(result.hasFieldErrors()){
			List<FieldError> list1=result.getFieldErrors();
			List<String> list=new LinkedList<String>();
			Iterator< FieldError> it=list1.iterator();
			while(it.hasNext()){
				FieldError f=(FieldError)it.next();
				String s=f.getDefaultMessage();
				list.add(s);
			}
			mv.addObject("errors",list);
			mv.setViewName("error");
			return mv;
		}else{
			service.updateUser(user);
			mv.setView(new RedirectView("/"));
			return mv;
		}	
	}
	@RequestMapping("/handledelete")
	public String handleDelete(@RequestParam("id")long id){
		service.deleteById(id);
		return "redirect:/";
	}
	
	@RequestMapping("/search")
	public ModelAndView search(String name){
		List<User> list=service.findByName(name);
		ModelAndView mv=new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("welcome");
		return mv;
	}
	
	
	public UserService getService() {
		return service;
	}


	public void setService(UserService service) {
		this.service = service;
	}

}
