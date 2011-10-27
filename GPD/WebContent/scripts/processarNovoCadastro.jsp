<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
<%@ page import = "gpd.bean.Administrador" %>
<%@ page import = "gpd.dao.GpdAdministradorDAO" %>
<%
String nome 	= request.getParameter("ncompleto");
String email	= request.getParameter("email");
String usuario	= request.getParameter("user");
String senha	= request.getParameter("passwd");

GpdAdministradorDAO admDAO  = new GpdAdministradorDAO();

if(admDAO.checaUsuario(usuario) == false) {
	Administrador administrador = new Administrador(nome, email, usuario, senha);
	admDAO.incluirAdministrador(administrador);
	session.setAttribute("login", usuario);
	session.setAttribute("nomecompleto", nome);
	response.sendRedirect("../index.jsp?modulo=home");
} else {
	response.sendRedirect("../index.jsp?modulo=erroInfo&msg=Usuário já existe. Tente novamente!");
}
%>