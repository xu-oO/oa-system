package cn.edu.njit.oa.controller;

import cn.edu.njit.oa.entity.Employee;
import cn.edu.njit.oa.global.Contant;
import cn.edu.njit.oa.service.DepartmentService;
import cn.edu.njit.oa.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author chencp
 */
@Controller("employeeController")
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/list")
    public String list(Map<String,Object> map){
        map.put("list",employeeService.getAll());
        return "employee_list";
    }

    @RequestMapping("/toAdd")
    public String toAdd(Map<String,Object> map){
        map.put("employee",new Employee());
        map.put("dlist",departmentService.getAll());
        map.put("plist", Contant.getPosts());
        return "employee_add";
    }

    @RequestMapping("/add")
    public String add(Employee employee){
        employeeService.add(employee);
        return "redirect:/employee/list";
    }

    @RequestMapping(value = "/toUpdate/{id}")
    public String toUpdate(@PathVariable(value = "id")String id,Map<String,Object> map){
        map.put("employee",new Employee());
        map.put("employee", employeeService.get(id));
        map.put("dlist", departmentService.getAll());
        map.put("plist", Contant.getPosts());
        return "employee_update";
    }

    @RequestMapping("/update")
    public String update(Employee employee){
        employeeService.edit(employee);
        return "redirect:/employee/list";
    }

    @RequestMapping("/remove/{id}")
    public String remove(@PathVariable("id")String id){
        employeeService.remove(id);
        return "redirect:/employee/list";
    }

}
