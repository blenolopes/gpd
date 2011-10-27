<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
<script language="javascript" type="text/javascript">
function valida_login() {
	if(document.acessarConta.login.value == "") {
		alert("Informe o login/usuario!");
		document.acessarConta.login.focus();
		return false;
	}
	
	if(document.acessarConta.senha.value == "") {
		alert("Informe a senha!");
		document.acessarConta.senha.focus();
		return false;
	}
	
	return true;
}

</script>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" width="80%" valign="top"><img src="imagens/logo.jpg" width="500" height="180" /></td>
    <td align="center" width="20%" valign="top">
    <% 
    String sessionLogin = (String)session.getAttribute("login");
    if(sessionLogin == null) {
    %>
    <form id="acessarConta" name="acessarConta" method="post" action="scripts/login.jsp" onsubmit="return valida_login();">
      <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td class="index_login_topo">&raquo; Acesse sua conta</td>
        </tr>
        <tr>
          <td class="index_login_texto">::: Usu&aacute;rio</td>
        </tr>
        <tr>
          <td class="index_login_field"><label>
            <input class="index_login_field2" name="login" type="text" id="login" size="25" maxlength="45" />
            </label></td>
        </tr>
        <tr>
          <td class="index_login_texto">::: Senha</td>
        </tr>
        <tr>
          <td class="index_login_field"><label>
            <input class="index_login_field2" name="senha" type="password" id="senha" size="25" maxlength="20" />
          </label></td>
        </tr>
        <tr>
          <td class="index_login_down"><label>
            <input class="index_login_field3" type="submit" name="logarSistema" id="logarSistema" value="&raquo; Acessar" />
          </label></td>
        </tr>
      </table>
    </form>
    <table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td class="index_login_novo_cadastro">&raquo; <a href="index.jsp?modulo=novoCadastro">Crie sua conta</a></td>
    <%
	 } else {
	 %><%@ include file="index_topo_logado.jsp" %><%
	 }
	 %>
  </tr>
</table>
</td>
  </tr>
</table>
