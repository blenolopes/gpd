<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
<%@ page import = "gpd.dao.GpdAuthDAO" %>
<%

String login = request.getParameter("login");
String senha = request.getParameter("senha");

GpdAuthDAO auth = new GpdAuthDAO();

if(auth.autenticaUsuarioSenha(login, senha) == true) {
	session.setAttribute("login", login);
	session.setAttribute("nomecompleto", auth.getNomeCompleto(login));
	response.sendRedirect("../index.jsp?modulo=home");
} else {
	response.sendRedirect("../index.jsp?modulo=adminErroLogin");
}
%>