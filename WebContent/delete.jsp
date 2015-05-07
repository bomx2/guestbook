<%@ page import="com.sds.icto.guestbook.vo.GuestBookVO"%>
<%@ page import="com.sds.icto.guestbook.dao.GuestBookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	GuestBookVO vo = new GuestBookVO();
	GuestBookDAO dao = new GuestBookDAO();

	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	vo.setNo(no);
	vo.setPassword(password);
	
	if(password.equals(vo.getPassword())){
		dao.delete(no,password);
	}
	
	//삭제
	response.sendRedirect("/Guestbook");

%>