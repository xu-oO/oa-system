package cn.edu.njit.oa.service;

import cn.edu.njit.oa.entity.Employee;

/**
 * @author chencp
 */
public interface GlobalService {

    /**
     * 登录
     * @param id
     * @param password
     * @return
     */
    Employee login(String id,String password);

    /**
     * 修改密码
     * @param employee
     */
    void changePassword(Employee employee);

}
