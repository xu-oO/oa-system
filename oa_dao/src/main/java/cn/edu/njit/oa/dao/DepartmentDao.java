package cn.edu.njit.oa.dao;

import cn.edu.njit.oa.entity.Department;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author chencp
 */
@Repository("departmentDao")
public interface DepartmentDao {

    /**
     * 插入
     * @param department
     */
    void insert(Department department);

    /**
     * 更新
     * @param department
     */
    void update(Department department);

    /**
     * 删除
     * @param id
     */
    void delete(String id);

    /**
     * 查询
     * @param id
     * @return
     */
    Department select(String id);

    /**
     * 查询所有
     * @return
     */
    List<Department> selectAll();
}
