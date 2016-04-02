package com.lhzl.drp.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lhzl.drp.model.Response;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by chenhao on 2016/4/3.
 */
public class TokenFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String token = request.getParameter("token");
       /* if ((token == null || "".equals(token)) && request.getRequestURL().indexOf("login") == -1) {
            ObjectMapper objectMapper = new ObjectMapper();
            String result = objectMapper.writeValueAsString(new Response().failure("BAD_TOKEN"));
            response.getWriter().print(result);
            response.getWriter().flush();
            response.getWriter().close();
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }*/
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
