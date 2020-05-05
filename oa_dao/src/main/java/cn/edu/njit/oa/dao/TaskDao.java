package cn.edu.njit.oa.dao;

import cn.edu.njit.oa.entity.Task;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author chencp
 */
public interface TaskDao {

    /**
     * 新增任务
     * @param task
     */
    void insert(Task task);

    /**
     * 根据 任务ID 更新状态
     * @param id
     * @param status
     */
    void updateStatusById(@Param("id") int id, @Param("status") String status);


    /**
     * 根据 Employee Id 查询任务列表
     * @param employeeId
     * @return
     */
    List<Task> findByEmployeeId(String employeeId);

    /**
     * 根据部门id查询任务列表
     * @param did 部门Id
     * @return  考勤列表
     */
    List<Task> findByDepartmentId(String did);
}
