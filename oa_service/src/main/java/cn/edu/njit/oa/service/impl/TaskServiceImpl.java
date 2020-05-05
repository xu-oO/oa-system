package cn.edu.njit.oa.service.impl;

import cn.edu.njit.oa.dao.EmployeeDao;
import cn.edu.njit.oa.dao.TaskDao;
import cn.edu.njit.oa.entity.Employee;
import cn.edu.njit.oa.entity.Task;
import cn.edu.njit.oa.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author checp
 */
@Service("TaskService")
public class TaskServiceImpl implements TaskService {
    @Qualifier("taskDao")
    @Autowired
    TaskDao taskDao;

    @Qualifier("employeeDao")
    @Autowired
    private EmployeeDao employeeDao;

    public void add(Task task) {
        taskDao.insert(task);
    }

    public void edit(int id, String status) {
        taskDao.updateStatusById(id, status);
    }

    public List<Task> findByEmployeeId(String employeeId) {
        return taskDao.findByEmployeeId(employeeId);
    }

    public List<Task> findByDepartmentId(String did) {
        return taskDao.findByDepartmentId(did);
    }

    public List<Employee> findEmployeeByDid(String did, String post) {
        return employeeDao.selectByDepartmentAndPost(did, post);
    }
}
