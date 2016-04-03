package com.lhzl.drp.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lhzl.drp.model.Response;
import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.ShardedJedis;
import redis.clients.jedis.ShardedJedisPool;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by chenhao on 2016/4/3.
 */
public class TokenFilter implements Filter {

    @Autowired
    private ShardedJedisPool shardedJedisPool;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        if (request.getRequestURL().indexOf("login") > -1) {
            String token = request.getParameter("token");
            ShardedJedis shardedJedis = shardedJedisPool.getResource();
            String tokenKey = "token:" + token;
            if (!shardedJedis.exists(tokenKey)) {
                ObjectMapper objectMapper = new ObjectMapper();
                String result = objectMapper.writeValueAsString(new Response().failure("BAD_TOKEN"));
                response.getWriter().print(result);
                response.getWriter().flush();
                response.getWriter().close();
            } else {
                filterChain.doFilter(servletRequest, servletResponse);
            }
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }

    }

    @Override
    public void destroy() {

    }
}
