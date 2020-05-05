package cn.edu.njit.oa.service;

import cn.edu.njit.oa.entity.WorkAttendance;

import java.util.List;

/**
 * @author chencp
 */
public interface WorkAttendanceService {
    /**
     * 申请考情
     * @param workAttendance 考勤实体
     */
    void add(WorkAttendance workAttendance);

    /**
     * 编辑考勤
     * @param workAttendance
     */
    void edit(WorkAttendance workAttendance);

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

    /**
     * 根据 ID 更新考勤状态
     * @param id    考勤id
     * @param result    考勤申请状态
     */
    void edit(int id, String result);
}
