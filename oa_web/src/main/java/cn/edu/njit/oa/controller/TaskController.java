package cn.edu.njit.oa.controller;

import cn.edu.njit.oa.dao.EmployeeDao;
import cn.edu.njit.oa.entity.Employee;
import cn.edu.njit.oa.entity.Task;
import cn.edu.njit.oa.global.Contant;
import cn.edu.njit.oa.service.EmployeeService;
import cn.edu.njit.oa.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * @author chencp
 */
@Controller("taskController")
@RequestMapping("/task")
public class TaskController {

    @Autowired
    private TaskService taskService;

    @RequestMapping("/list")
    public String list(HttpSession session, Map<String,Object> map) {
        Employee employee = (Employee) session.getAttribute("employee");
        if(Contant.POST_FM.equals(employee.getPost())) {
            map.put("list", taskService.findByDepartmentId(employee.getDepartmentId()));
        }else {
            map.put("list", taskService.findByEmployeeId(employee.getId()));
        }
        return "task_list";
    }

    @RequestMapping("/complete/{id}")
    public String complete(@PathVariable int id) {
        taskService.edit(id, Contant.TASK_DONE);
        return "redirect:/task/list";
    }

    @RequestMapping("/to_add")
    public String toAdd(HttpSession session, Map<String,Object> map) {
        Employee employee = (Employee) session.getAttribute("employee");
        List<Employee> list = taskService.findEmployeeByDid(employee.getDepartmentId(),Contant.POST_STAFF);
        map.put("list", list);
        return "task_add";
    }
    @RequestMapping("/add")
    public String add(Task task) {
        task.setStatus(Contant.TASK_CREATE);
        taskService.add(task);
        return "redirect:/task/list";
    }

}
