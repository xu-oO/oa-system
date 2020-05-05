package cn.edu.njit.oa.dao;

import cn.edu.njit.oa.entity.WorkAttendance;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author chencp
 */
public interface WorkAttendanceDao {
    /**
     * 插入考勤记录
     * @param workAttendance 考勤实体
     */
    void insert(WorkAttendance workAttendance);

    /**
     * 根据 ID 更新
     * @param workAttendance 考勤实体
     */
    void update(WorkAttendance workAttendance);

    /**
     * 根据 ID 更新考勤状态
     * @param id    考勤id
     * @param result    考勤申请状态
     */
    void updateResultById(@Param("id") int id, @Param("result") String result);

    /**
     * 根据 ID 删除
     * @param id    考勤ID
     */
    void delete(int id);

    /**
     * 根据 Employee Id 获取考勤列表
     * @param employeeId
     * @return
     */
    List<WorkAttendance> findByEmployeeId(String employeeId);

    /**
     * 根据部门id查询考勤列表
     * @param did 部门Id
     * @return  考勤列表
     */
    List<WorkAttendance> findByDepartmentId(String did);
}
