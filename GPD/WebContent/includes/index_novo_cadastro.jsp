<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" errorPage="" %>
<script language="javascript" type="text/javascript">
function valida_cadastro() {
	if(document.cadastroNovo.ncompleto.value == "") {
		alert("Informe o nome completo!");
		document.cadastroNovo.ncompleto.focus();
		return false;
	}
	
	if(document.cadastroNovo.email.value == "") {
		alert("Informe seu e-mail!");
		document.cadastroNovo.email.focus();
		return false;
	}
	
	if(document.cadastroNovo.user.value == "") {
		alert("Informe o login/usuario!");
		document.cadastroNovo.user.focus();
		return false;
	}
	
	if(document.cadastroNovo.passwd.value == "") {
		alert("Informe a senha!");
		document.cadastroNovo.passwd.focus();
		return false;
	}
	
	if(document.cadastroNovo.npasswd.value == "") {
		alert("Confirme a senha!");
		document.cadastroNovo.npasswd.focus();
		return false;
	}
	
	if(document.cadastroNovo.passwd.value != document.cadastroNovo.npasswd.value) {
		alert("Senha não confere, verifique novamente!");
		document.cadastroNovo.npasswd.focus();
		return false;
	}
	
	return true;
}
</script>
<table width="100%" border="0" cellspacing="0" cellpadding="10">
  <tr>
    <td class="index_cadastro_topo">&raquo; Novo cadastro</td>
  </tr>
  <tr>
    <td class="index_cadastro_down"><form action="scripts/processarNovoCadastro.jsp" method="post" name="cadastroNovo" id="cadastroNovo" onSubmit="return valida_cadastro();">
      <table width="100%" border="0" cellspacing="0" cellpadding="5">
        <tr>
          <td>::: Nome Completo</td>
        </tr>
        <tr>
          <td><label>
            <input name="ncompleto" type="text" class="index_cadastro_field" id="ncompleto" size="45" maxlength="45">
          </label></td>
        </tr>
        <tr>
          <td>::: E-Mail</td>
        </tr>
        <tr>
          <td><input class="index_cadastro_field" name="email" type="text" id="email" size="45" maxlength="45"></td>
        </tr>
        <tr>
          <td>::: Usuário do sistema</td>
        </tr>
        <tr>
          <td><input class="index_cadastro_field" name="user" type="text" id="user" size="45" maxlength="45"></td>
        </tr>
        <tr>
          <td>::: Senha</td>
        </tr>
        <tr>
          <td><input class="index_cadastro_field" name="passwd" type="password" id="passwd" size="45" maxlength="45"></td>
        </tr>
        <tr>
          <td>::: Confirme a senha</td>
        </tr>
        <tr>
          <td><input class="index_cadastro_field" name="npasswd" type="password" id="npasswd" size="45" maxlength="45"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><label>
            <input class="index_cadastro_field" type="submit" name="enviarDados" id="enviarDados" value="&raquo; Cadastrar">
          </label></td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>
