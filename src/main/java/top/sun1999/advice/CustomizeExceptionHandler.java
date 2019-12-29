package top.sun1999.advice;

import org.apache.ibatis.binding.BindingException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;
import top.sun1999.util.MsgUtil;

/**
 * Created by SunnyGrocery on 2019/11/21 21:19
 */
@ControllerAdvice
public class CustomizeExceptionHandler {
    /**
     * 处理Controller路径映射中的方法类型不匹配
     * 即当Controller中传入错误的PathVariable无法类型转换时，将其处理为404错误
     */
    @ExceptionHandler(BindingException.class)
    public String methodArgumentTypeMismatchExceptionHandel(MethodArgumentTypeMismatchException e, Model model) {
        model.addAttribute("msg", MsgUtil.someThingWrong(PageEnum.PAGE_NUM_NOT_FOUND.getMsg()));
        return "error";
    }

    /**
     * 处理未知错误
     */
    @ExceptionHandler(Exception.class)
    public String unknownExceptionHandel(Model model, Exception ex) {
        model.addAttribute("msg", MsgUtil.unknownWrong(ex.getClass().getSimpleName()));
        return "error";
    }
}
