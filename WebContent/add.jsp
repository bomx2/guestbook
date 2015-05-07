<%@ page import="com.sds.icto.guestbook.vo.GuestBookVO"%>
<%@ page import="com.sds.icto.guestbook.dao.GuestBookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	
	GuestBookVO vo = new GuestBookVO();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	
	GuestBookDAO dao = new GuestBookDAO();
	dao.insert( vo );

	//메세지 등록
	response.sendRedirect("/Guestbook");
	
%>