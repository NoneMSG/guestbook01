<%@page import="com.jx372.guestbook.dao.GuestBookDao"%>
<%@page import="com.jx372.guestbook.vo.GuestBookVo"%>
<%

	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String passwd = request.getParameter("passwd");
	String message = request.getParameter("message");

	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setPasswd(passwd);
	vo.setMessage(message);
	
	new GuestBookDao().insert(vo);
	
	response.sendRedirect("/guestbook01");
%>
