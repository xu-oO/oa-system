package cn.edu.njit.oa.service;

import cn.edu.njit.oa.entity.Employee;

import java.util.List;

/**
 * @author chencp
 */
public interface EmployeeService {

    /**
     * 添加
     * @param employee
     */
    void add(Employee employee);

    /**
     * 编辑
     * @param employee
     */
    void edit(Employee employee);

    /**
     * 移除
     * @param id
     */
    void remove(String id);

    /**
     * 根据 id 获取员工
     * @param id
     * @return
     */
    Employee get(String id);

    /**
     * 获取所有员工
     * @return
     */
    List<Employee> getAll();

}
