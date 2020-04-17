package cn.edu.njit.oa.dao;

import cn.edu.njit.oa.entity.Employee;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author chencp
 */
@Repository("employeeDao")
public interface EmployeeDao {

    /**
     * 插入
     * @param employee
     */
    void insert(Employee employee);

    /**
     * 更新
     * @param employee
     */
    void update(Employee employee);

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
    Employee select(String id);

    /**
     * 查询所有
     * @return
     */
    List<Employee> selectAll();

    /**
     * 根据 did post 查询员工列表
     * @param did
     * @param post
     */
    List<Employee> selectByDepartmentAndPost(@Param("did") String did,@Param("post") String post);

}
