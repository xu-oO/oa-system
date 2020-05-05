package cn.edu.njit.oa.service;

import cn.edu.njit.oa.entity.Employee;
import cn.edu.njit.oa.entity.Task;
import cn.edu.njit.oa.entity.WorkAttendance;

import java.util.List;

/**
 * @author chencp
 */
public interface TaskService {

    /**
     * 新建任务
     * @param task 考勤实体
     */
    void add(Task task);

    /**
     * 根据 任务ID 更新状态
     * @param id
     * @param status
     */
    void edit(int id, String status);

    /**
     * 根据 Employee Id 获取任务列表
     * @param employeeId
     * @return
     */
    List<Task> findByEmployeeId(String employeeId);

    /**
     * 根据部门id查询任务列表
     * @param did 部门Id
     * @return  任务列表
     */
    List<Task> findByDepartmentId(String did);

    /**
     * 根据部门Id获取员工列表
     * @param did
     * @param post
     * @return
     */
    List<Employee> findEmployeeByDid(String did, String post);
}
