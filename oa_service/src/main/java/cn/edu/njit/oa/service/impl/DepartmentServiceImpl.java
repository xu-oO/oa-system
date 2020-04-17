package cn.edu.njit.oa.service.impl;

import cn.edu.njit.oa.dao.DepartmentDao;
import cn.edu.njit.oa.entity.Department;
import cn.edu.njit.oa.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author chencp
 */
@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService {


    @Qualifier("departmentDao")
    @Autowired
    private DepartmentDao departmentDao;

    public void add(Department department) {
        departmentDao.insert(department);
    }

    public void edit(Department department) {
        departmentDao.update(department);
    }

    public void remove(String id) {
        departmentDao.delete(id);
    }

    public Department get(String id) {
        return departmentDao.select(id);
    }

    public List<Department> getAll() {
        return departmentDao.selectAll();
    }
}