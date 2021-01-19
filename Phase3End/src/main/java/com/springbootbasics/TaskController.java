package com.springbootbasics;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TaskController {

    @Autowired
    private TaskRepository userData;
    
    @Autowired
    private UserRepository uData;
    
    @Autowired
    private TaskService service;
    
    	@GetMapping("/delete")
    	public ModelAndView getPage() {
    		Task usr = new Task();
    		return new ModelAndView("searchTasks", "fn", usr);       
    	}

    	@PostMapping("/delete")
    	public ModelAndView find(@RequestParam long id) {
    		Task usr = userData.findById(id).get();
    		return new ModelAndView("delete", "hello", usr);       
    	}
    	
       	@GetMapping("/create")
    	public ModelAndView getPage2() {
    		Task usr = new Task();
    		return new ModelAndView("createTask", "fn2", usr);       
    	}

    	@PostMapping("/create")
    	public ModelAndView createStudent(Task task) {
    		Task newTask = userData.save(task);
    		
    		return new ModelAndView("create", "hello2", newTask);

    	}
    	
       	@GetMapping("/register")
    	public ModelAndView getPage3() {
    		User usr = new User();
    		return new ModelAndView("registerUser", "fn8", usr);       
    	}

    	@PostMapping("/register")
    	public String createStudent2(User user) {
    		User newUser = uData.save(user);
    		//List<Task> users = (List<Task>) userData.findAll();
    		return "Registration Successful. <a href=\"/login\">Login</a>";

    	}
    	
       	@GetMapping("/login")
    	public ModelAndView getPage4() {
    		User usr = new User();
    		return new ModelAndView("login", "fn10", usr);       
    	}

    	@PostMapping("/login")
    	public String createStudent3(User u) {
    		
    		User aUser = uData.getUserByPassword(u.getPassword());
    		aUser = uData.getUserByUsername(u.getUsername());
    		
    		if(aUser != null) {
    			return "Login Successful. <a href=\"/welcome\">Welcome</a>";
    		}
    		else {
    		return "Login Unsuccessful.";
    		}
    	}
    	
       	@GetMapping("/welcome")
    	public ModelAndView getPage5() {
    		User usr = new User();
    		return new ModelAndView("welcome", "fn11", usr);       
    	}

    	@GetMapping("/editemp")
    	public ModelAndView getupdate() {
    		Task task = new Task();
 

    		return new ModelAndView("searchTasks2", "fn5" , task);
    	}
    	@PostMapping("/editemp")
    	public ModelAndView updateEmp(Task task) {

    		userData.save(task);
    		
    		return new ModelAndView("updateTasks", "hello10", task);
    	}
    	
    	@GetMapping("/read")
    	public ModelAndView listTask() {
    		List<Task> tasks = (List<Task>) userData.findAll();
    		return new ModelAndView("read","task", tasks);
    	}
    	
    	@RequestMapping(value="/{id}", method = RequestMethod.GET)
    	public String deleteUser(@PathVariable("id") long theId)  
    	{  

    		userData.deleteById(theId);
    		return "Task deleted successfully <a href=\"/welcome\">Welcome</a>";

    	} 

}

    

    
