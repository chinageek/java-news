package com.javaranger.news.utils;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;


public class RequestFilter extends OncePerRequestFilter{

	private static final String IP = "IP";
	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		// 获取请求IP
        try {
            String ip = request.getRemoteHost();
            ThreadContext.put(IP, ip);
            doFilter(request, response, filterChain);
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }finally{
        	ThreadContext.remove(IP);
        }
	}

	public static String getIp() {
		Object object = ThreadContext.get(IP);
		if (object != null) {
			return (String) object;
		}
		return "";
	}
}
