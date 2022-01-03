/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author User
 */
@Controller
public class Controller1 {
    @RequestMapping("/employeeForm")
    public String employeeform(){
    return "employeeForm";
    }
    @RequestMapping("/resultPage")
    public String result(Model m){
        DAO dao= new DAO();
        m.addAttribute("employee",dao.show());
    return "resultPage";
    }
    @RequestMapping(value="/resultPage", method=RequestMethod.POST)
    public String m3(@ModelAttribute() Employee employee,Model m){
        DAO dao= new DAO();
        dao.insert(employee);      
        m.addAttribute("employee",dao.show());
    return "resultPage";
    } 
    @RequestMapping(value="/delete",method = RequestMethod.POST)
    public String delete(@ModelAttribute() Employee employee,Model m){
        DAO dao= new DAO();
       dao.delete(employee);
       m.addAttribute("employee",dao.show()); 
        
    return "resultPage";
    }
    @RequestMapping(value="/update",method = RequestMethod.POST)
    public String update(@ModelAttribute() Employee employee,Model m){
        DAO dao= new DAO();
       dao.update(employee);
       m.addAttribute("employee",dao.show()); 
        
    return "resultPage";
    }
    @RequestMapping(value="/updateForm",method = RequestMethod.POST)
    public String updatef(@ModelAttribute() Employee employee,Model m){
       m.addAttribute("em",employee);  
    return "updateForm";
    }
    @RequestMapping("/")
    public String m2(){
    return "index";
    }
    
}
