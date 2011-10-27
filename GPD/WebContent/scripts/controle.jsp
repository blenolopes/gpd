<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
<%
String getModulo = "";
if(request.getParameter("modulo") != null) {
	getModulo = request.getParameter("modulo");
}

if(!getModulo.equals("")) {
	if(getModulo.equals("home")) {
		%><%@ include file="/includes/index_centro_home.jsp" %><%
	} else
	if(getModulo.equals("sobre")) {
		%><%@ include file="/includes/index_centro_sobre.jsp" %><%
	} else
	if(getModulo.equals("novoCadastro")) {
		%><%@ include file="/includes/index_novo_cadastro.jsp" %><%
	} else
	if(getModulo.equals("adminCadastro")) {
		%><%@ include file="/includes/admin_cadastro.jsp" %><%
	} else
	if(getModulo.equals("erroInfo")) {
		%><%@ include file="/includes/index_centro_erro.jsp" %><%
	} else
	if(getModulo.equals("adminErroPermissao")) {
		%><%@ include file="/includes/admin_sem_permissao.jsp" %><%
	} else
	if(getModulo.equals("adminErroLogin")) {
		%><%@ include file="/includes/index_centro_erro666.jsp" %><%
	} else {
		%><%@ include file="/includes/index_centro_erro404.jsp" %><%
	}
} else {
	%><%@ include file="/includes/index_centro_erro404.jsp" %><%
}
%>