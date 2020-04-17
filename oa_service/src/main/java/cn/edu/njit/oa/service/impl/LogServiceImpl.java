package cn.edu.njit.oa.service.impl;

import cn.edu.njit.oa.dao.LogDao;
import cn.edu.njit.oa.entity.Log;
import cn.edu.njit.oa.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author chencp
 */
@Service("logService")
public class LogServiceImpl implements LogService {

    @Qualifier("logDao")
    @Autowired
    private LogDao logDao;

    public void add(Log log) {
        logDao.insert(log);
    }

    public void delete(int id) {
        logDao.delete(id);
    }

    public List<Log> getAll(String id) {
        return logDao.selectAll(id);
    }
}
