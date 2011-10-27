<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
<%
String cmd = request.getParameter("msg");
%>
<table width="60%" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td class="index_centro_cabecalho">&raquo; Ops, ocorreu um erro!</td>
  </tr>
  <tr>
    <td align="center" class="index_centro_cabecalho_down"><p><img src="imagens/warning.png" width="100" height="100" /></p>
    <p class="index_centro_erro1">
    <%
    if(cmd == "") {
    	out.print("Erro desconhecido!");
    } else {
    out.print(cmd);
    }
    %></p></td>
  </tr>
</table>
