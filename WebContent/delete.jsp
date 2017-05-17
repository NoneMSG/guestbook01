<%@page import="com.jx372.guestbook.dao.GuestBookDao"%>
<%@page import="com.jx372.guestbook.vo.GuestBookVo"%>
<%
request.setCharacterEncoding("utf-8");
String passwd = request.getParameter("passwd");
Long no = Long.parseLong(request.getParameter("no"));

GuestBookVo vo = new GuestBookVo();
vo.setNo(no);
vo.setPasswd(passwd);

new GuestBookDao().delete(vo);

response.sendRedirect("/guestbook01");
%>