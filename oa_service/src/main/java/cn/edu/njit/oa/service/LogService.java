package cn.edu.njit.oa.service;

import cn.edu.njit.oa.entity.Log;

import java.util.List;

/**
 * @author chencp
 */
public interface LogService {

    /**
     * 添加
     * @param log
     */
    void add(Log log);

    /**
     * 删除
     * @param id
     */
    void delete(int id);

    /**
     * 获取所有日志
     * @param id
     * @return
     */
    List<Log> getAll(String id);
}
