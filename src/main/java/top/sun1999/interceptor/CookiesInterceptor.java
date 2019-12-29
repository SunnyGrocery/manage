package top.sun1999.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by SunnyGrocery on 2019/11/9 18:25
 */
@Component
public class CookiesInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        if (verifyCookies(request)) {
            return true;
        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
        return false;
    }

    private boolean verifyCookies(HttpServletRequest request) {
        if (request.getCookies() != null) {
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                if (ROOT.COOKIE_ID.equals(cookie.getName())) {
                    if (ROOT.COOKIE_VALUE.equals(cookie.getValue())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

    }
}
