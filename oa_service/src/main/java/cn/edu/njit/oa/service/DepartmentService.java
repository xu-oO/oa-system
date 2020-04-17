package cn.edu.njit.oa.service;

import cn.edu.njit.oa.entity.Department;

import java.util.List;

/**
 * @author chencp
 */
public interface DepartmentService {

    /**
     * 添加
     * @param department
     */
    void add(Department department);

    /**
     * 编辑
     * @param department
     */
    void edit(Department department);

    /**
     * 移除
     * @param id
     */
    void remove(String id);

    /**
     * 根据 id 获取部门
     * @param id
     * @return
     */
    Department get(String id);

    /**
     * 获取所有部门
     * @return
     */
    List<Department> getAll();
}
