package cn.edu.njit.oa.service.impl;

import cn.edu.njit.oa.dao.WorkAttendanceDao;
import cn.edu.njit.oa.entity.WorkAttendance;
import cn.edu.njit.oa.service.WorkAttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author chencp
 */
@Service("WorkAttendanceService")
public class WorkAttendanceServiceImpl implements WorkAttendanceService {
    @Qualifier("workAttendanceDao")
    @Autowired
    private WorkAttendanceDao workAttendanceDao;

    public void add(WorkAttendance workAttendance) {
        workAttendanceDao.insert(workAttendance);
    }

    public void edit(WorkAttendance workAttendance) {
        workAttendanceDao.update(workAttendance);
    }

    public List<WorkAttendance> findByEmployeeId(String employeeId) {
        return workAttendanceDao.findByEmployeeId(employeeId);
    }

    public List<WorkAttendance> findByDepartmentId(String did) {
        return workAttendanceDao.findByDepartmentId(did);
    }

    public void edit(int id, String result) {
        workAttendanceDao.updateResultById(id, result);
    }
}
