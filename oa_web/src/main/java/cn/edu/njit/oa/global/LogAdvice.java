package cn.edu.njit.oa.global;

import cn.edu.njit.oa.entity.Employee;
import cn.edu.njit.oa.entity.Log;
import cn.edu.njit.oa.service.LogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * 日志切面类
 * @author chencp
 */
@Component
@Aspect
public class LogAdvice {

    @Autowired
    private LogService logService;

    @AfterReturning(value = "login()||changePassword()")
    public void operationLog(JoinPoint joinPoint){
        HttpSession session = (HttpSession) joinPoint.getArgs()[0];
        Employee employee = (Employee) session.getAttribute("employee");
        if (employee == null) {
            return;
        }
        Log log = new Log();
        log.setEmployeeId(employee.getId());
        log.setOperationTime(new Date());
        log.setOperation(joinPoint.getSignature().getName());
        logService.add(log);
    }

    /**
     * 登录切点
     */
    @Pointcut(value = "execution(* cn.edu.njit.oa.controller.GlobalController.login(..))")
    private void login(){}

    /**
     * 密码校验切点
     */
    @Pointcut(value = "execution(* cn.edu.njit.oa.controller.GlobalController.changePassword(..))")
    private void changePassword(){}



}
