package entidade;

public class Usuarios {
	private Integer id;
	private String email;
	private String senha;
	private String nome;
	
	
	public Usuarios(String email , String senha, String nome ) {
		super();
		this.email = email;
		this.senha = senha; 
		this.nome = nome;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getSenha() {
		return senha;
	}


	public void setSenha(String senha) {
		this.senha = senha;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}

	
	
	
}
