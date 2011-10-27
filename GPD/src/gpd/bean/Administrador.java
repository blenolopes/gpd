package gpd.bean;

public class Administrador {
	private String nome;
	private String email;
	private String usuario;
	private String senha;
	
	//
	// Construtor...
	//
	
	public Administrador(String nome, String email, String usuario, String senha) {
		this.nome 		= nome;
		this.email 		= email;
		this.usuario 	= usuario;
		this.senha 		= senha;
	}
	
	//
	// get´s
	//
	
	public String getNome() {
		return nome;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getUsuario() {
		return usuario;
	}
	
	public String getSenha() {
		return senha;
	}
	
	//
	// set´s
	//
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	
	public void setSenha(String senha) {
		this.senha = senha;
	}
}