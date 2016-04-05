package com.lhzl.drp.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lhzl.drp.model.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import redis.clients.jedis.ShardedJedis;
import redis.clients.jedis.ShardedJedisPool;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by chenhao on 2016/4/3.
 */
public class TokenFilter extends HandlerInterceptorAdapter {

    @Autowired
    private ShardedJedisPool shardedJedisPool;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (request.getRequestURL().indexOf("login") == -1) {
            String token = request.getParameter("token");
            ShardedJedis shardedJedis = shardedJedisPool.getResource();
            String tokenKey = "token:" + token;
            if (!shardedJedis.exists(tokenKey)) {
                ObjectMapper objectMapper = new ObjectMapper();
                String result = objectMapper.writeValueAsString(new Response().failure("BAD_TOKEN"));
                response.getWriter().print(result);
                response.getWriter().flush();
                response.getWriter().close();
                return false;
            } else {
                return true;
            }
        } else {
            return true;
        }

    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }
}
