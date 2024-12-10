package Controllers;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Interfaces.UserDAO;
import Model.User;

@Controller
public class StudentController {
	@Autowired
	private UserDAO userDAO;
    @RequestMapping(value="/add_stu",method = RequestMethod.POST)
    public String addStudent(@ModelAttribute User user) {
    	userDAO.saveStudent(user);
    	return "redirect:/show_stu?";
    }
    
    @RequestMapping(value="/show_stu",method = RequestMethod.GET)
    public String showStudent(Model model) {
		ArrayList<User> users = (ArrayList<User>) userDAO.getStudent();
		model.addAttribute("users",users);
		
		return "Table";
    }
    
    @RequestMapping(value="/stu_delete",method=RequestMethod.GET)
    public String deleteStudent(@RequestParam("id")int id) {

    	userDAO.deleteStudent(id);
    	return "redirect:/show_stu?";
    	
    }
    
    @RequestMapping(value="/stu_update",method=RequestMethod.POST)
    public String updateStudent(@ModelAttribute User user) {
    	System.out.print(user.getId());
    	userDAO.updateStudent(user);
    	return "redirect:/show_stu?";
    }
}
