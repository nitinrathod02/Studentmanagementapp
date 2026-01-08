package edu.cjc.sma.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.sma.app.model.Student;
import edu.cjc.sma.app.servicei.StudentServiceI;

@Controller
public class AdminController {
	
	@Autowired
	StudentServiceI ssi;
	
	@RequestMapping("/")
	public String preLogin() {
		
		return "login";
	}
	
	@RequestMapping("/login")
	public String onLogin(@RequestParam("username")String username,
			@RequestParam("password")String password,Model m) {
		
		List<Student> list=ssi.getAllData();
		m.addAttribute("data", list);
		if(username.equals("admin") && password.equals("admin")) {
			
			return "adminscreen";
			
		}else {
			m.addAttribute("login_fail", "Enter valid details.....");
			return "login";
		}
		
		
	}
	
	@RequestMapping("/enroll_student")
	public String saveStudentDetail(@ModelAttribute Student student,Model m) {
		List<Student> list=ssi.getAllData();
		m.addAttribute("data", list);
		
		ssi.saveStudentData(student);
		
		return "adminscreen";
		
		
	}
	
	@RequestMapping("/search")
	public String getStudentByBatchMode(@RequestParam("batchMode") String batchMode,@RequestParam("batchNumber") String batchNumber,Model m) {
		
		List<Student> list=ssi.getAllStudentByBatchMode(batchNumber, batchMode);
		if(list.size()>0) {
			m.addAttribute("data", list);
			return "adminscreen";
			
		}else {
			List<Student> result=ssi.getAllData();
			m.addAttribute("data", result);
			m.addAttribute("message", "record not found....");
		}
		
		return "adminscreen";
	}
	
	@RequestMapping("/delete")
	public String deleteData(@RequestParam("studentId")int studentId,Model m) {
		
		List<Student> list=ssi.deleteData(studentId);
		m.addAttribute("data", list);
		
		return "adminscreen";
	}
	
	
	

}
