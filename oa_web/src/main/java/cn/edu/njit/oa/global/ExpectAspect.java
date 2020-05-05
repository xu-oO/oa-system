package cn.edu.njit.oa.global;

import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @author chencp
 */
@Component
@Aspect
public class ExpectAspect {

    @Pointcut("execution(* cn.edu.njit..*.*(..))")
    public void exceptionPointcut(){
    }

    @AfterThrowing(value = "exceptionPointcut()",throwing = "throwable")
    public void handleException(Throwable throwable) {
        System.out.println("全局异常捕获:" + throwable);
    }
}
