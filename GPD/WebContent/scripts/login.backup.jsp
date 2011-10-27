<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
<%@ page import = "java.sql.*" %>
<%
Connection cnn = null;
Statement  st  = null;
ResultSet  rs  = null;

String login = request.getParameter("login");
String senha = request.getParameter("senha");

try {
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	cnn = DriverManager.getConnection("jdbc:mysql://mysql.esparta.bin/gpd", "gpd", "gpd");
	
	st = cnn.createStatement();
	rs = st.executeQuery("select adm_usuario, adm_senha from administrador where adm_usuario=" + "'" + login + "'" + " and adm_senha=" + "'" + senha + "'" + "");
	
	while(rs.next()) {
		session.setAttribute("login", login);
		rs = st.executeQuery("select adm_nome from administrador where adm_usuario=" + "'" + login + "'");
		while(rs.next()) {
			session.setAttribute("nomecompleto", rs.getString("adm_nome"));
			break;
		}
		response.sendRedirect("../index.jsp?modulo=adminCadastro");
		break;
	}
	
	response.sendRedirect("../index.jsp?modulo=adminErroLogin");
} catch(Exception e) {
	out.print(e.getMessage());
}
	
%>