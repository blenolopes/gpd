<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
<%@ include file="/scripts/controle_sessao.jsp" %>
<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td class="admin_cadastro_topo">&raquo; Bem-vindo <b><% out.print(session.getAttribute("nomecompleto")); %></b></td>
  </tr>
  <tr>
    <td class="admin_cadastro_down">&nbsp;</td>
  </tr>
</table>
