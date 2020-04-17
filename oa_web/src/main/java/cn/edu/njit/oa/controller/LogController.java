package cn.edu.njit.oa.controller;

import cn.edu.njit.oa.entity.Employee;
import cn.edu.njit.oa.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @author chencp
 */
@Controller
@RequestMapping("log")
public class LogController {

    @Autowired
    private LogService logService;

    @RequestMapping("/list")
    public String list(HttpSession session,Map<String, Object> map){
        Employee employee = (Employee) session.getAttribute("employee");
        String id = employee.getId();
        map.put("list",logService.getAll(id));
        return "log_list";
    }

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable int id){
        logService.delete(id);
        return "redirect:/log/list";
    }



}
