<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td class="index_login_topo">&raquo; <% out.print(session.getAttribute("nomecompleto")); %></td>
  </tr>
  <tr>
    <td class="index_login_texto2">&raquo; <a href="scripts/logout.jsp">Logout</a></td>
  </tr>
  <tr>
  	<td class="index_login_texto2">&raquo; <a href="index.jsp?modulo=adminCadastro">Adicionar perfil</a></td>
  </tr>
  <tr>
  	<td class="index_login_texto2">&raquo; <a href="index.jsp?modulo=adminGerenciar">Gerenciar perfil</a></td>
  </tr>
</table>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
