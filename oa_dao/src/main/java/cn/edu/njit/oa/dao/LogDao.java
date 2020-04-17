package cn.edu.njit.oa.dao;

import cn.edu.njit.oa.entity.Log;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author chencp
 */
@Repository("logDao")
public interface LogDao {

    /**
     * 插入
     * @param log
     */
    void insert(Log log);

    /**
     * 删除
     * @param id
     */
    void delete(int id);

    /**
     * 查询所有
     * @param id
     * @return
     */
    List<Log> selectAll(String id);

}
