<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
<%@ page import = "javax.servlet.http.HttpSession" %>

<%
HttpSession sessao = request.getSession(true);
String lg = (String)sessao.getAttribute("login");
// String pw = (String)sessao.getAttribute("senha");

if(lg == null) {
	response.sendRedirect("index.jsp?modulo=adminErroPermissao");
}
%>