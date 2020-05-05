package cn.edu.njit.oa.controller;

import cn.edu.njit.oa.entity.Employee;
import cn.edu.njit.oa.entity.WorkAttendance;
import cn.edu.njit.oa.global.Contant;
import cn.edu.njit.oa.service.WorkAttendanceService;
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
@Controller("workAttendanceController")
@RequestMapping("/work_attendance")
public class WorkAttendanceController {

    @Autowired
    private WorkAttendanceService workAttendanceService;

    @RequestMapping("/list")
    public String list(HttpSession session,Map<String,Object> map) {
        Employee employee = (Employee) session.getAttribute("employee");
        String id = employee.getId();

        map.put("list", workAttendanceService.findByEmployeeId(id));
        return "work_attendance_list";
    }

    @RequestMapping("/toAdd")
    public String toAdd(){
        return "work_attendance_add";
    }

    @RequestMapping("/add")
    public String add(HttpSession session, WorkAttendance workAttendance) {
        Employee employee = (Employee) session.getAttribute("employee");
        workAttendance.setEmployeeId(employee.getId());
        workAttendance.setResult(Contant.CLAIMVOUCHER_SUBMIT);
        workAttendanceService.add(workAttendance);
        return "redirect:/work_attendance/list";
    }

    @RequestMapping("/allow/{id}")
    public String allow(@PathVariable int id) {
        workAttendanceService.edit(id,  Contant.DEAL_PASS);
        return "redirect:/work_attendance/approval";
    }

    @RequestMapping("/refuse/{id}")
    public String refuse(@PathVariable int id) {
        workAttendanceService.edit(id,  Contant.DEAL_REJECT);
        return "redirect:/work_attendance/approval";
    }

    @RequestMapping("/approval")
    public String toApproval(HttpSession session, Map<String,Object> map) {
        Employee employee = (Employee) session.getAttribute("employee");
        if (Contant.POST_FM.equals(employee.getPost())) {
            List<WorkAttendance> list = workAttendanceService.findByDepartmentId(employee.getDepartmentId());
            map.put("list", list);
        }

        return "work_attendance_approval";
    }

}
