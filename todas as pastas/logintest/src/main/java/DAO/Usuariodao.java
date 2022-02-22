package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conexao.Conexao;
import entidade.Usuarios;


public class Usuariodao {

	public Usuariodao() {

	}


   public void cadastro (Usuarios novousuario) {
	Conexao conexao = Conexao.getInstance();
	Connection connection = conexao.getConnection();
  
	try {
		PreparedStatement preStat = connection.prepareStatement("insert into usuarios (email, senha,nome) values (?,?,?)");
		preStat.setString(1, novousuario.getEmail());
		preStat.setString(2, novousuario.getSenha());
		preStat.setString(3, novousuario.getNome());
		System.out.println(preStat);
		preStat.executeUpdate();
		System.out.println("Comando executado");
		preStat.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}

}

public ArrayList<Usuarios> getListUsuario() {
	Conexao conexao = Conexao.getInstance();
	Connection connection = conexao.getConnection();
	ArrayList<Usuarios> lista = new ArrayList<Usuarios>();
	try {
		PreparedStatement preStat = connection.prepareStatement("select * from usuarios");
		ResultSet resultSet = preStat.executeQuery();

		while (resultSet.next()) {
			Integer id = resultSet.getInt("id");
			String email = resultSet.getString("email");
			String senha = resultSet.getString("senha");
			String nome = resultSet.getString("nome");
			Usuarios user = new Usuarios(email, senha, nome);
			user.setId(id);
			lista.add(user);
		}
		resultSet.close();
		preStat.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return lista;
}

public void removerUsuarios(Integer id) {
	Conexao conexao = Conexao.getInstance();
	Connection connection = conexao.getConnection();

	try {
		PreparedStatement preStat = connection.prepareStatement("delete from usuarios where id = ?");
		preStat.setInt(1, id);
		System.out.println(preStat);
		preStat.executeUpdate();
		System.out.println("Comando executado");
		preStat.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

public void update(Usuarios updateUser) {
	Conexao conexao = Conexao.getInstance();
	Connection connection = conexao.getConnection();

	try {
		PreparedStatement preStat = connection.prepareStatement("update usuarios set nome = ?, email = ? , senha = ? where id = ?");
		preStat.setString(1, updateUser.getNome());
		preStat.setString(2, updateUser.getEmail());
		preStat.setString(3, updateUser.getSenha());
		preStat.setInt(4, updateUser.getId());
		
		System.out.println(preStat);
		preStat.executeUpdate();
		System.out.println("Comando executado");
		preStat.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

public Usuarios buscarUsuario(Integer id) {
	Conexao conexao = Conexao.getInstance();
	Connection connection = conexao.getConnection();
	Usuarios user = null;
	try {
		PreparedStatement preStat = connection.prepareStatement("select * from usuarios where id = ?");
		preStat.setInt(1, id);
		ResultSet resultSet = preStat.executeQuery();
		while (resultSet.next()) {

			Integer ida = resultSet.getInt("id");
			String email = resultSet.getString("email");
			String senha = resultSet.getString("senha");
			String nome = resultSet.getString("nome");
			user = new Usuarios (email, senha,nome );
			user.setId(ida);

		}
		resultSet.close();
		preStat.close();
	} catch (SQLException e) {

		e.printStackTrace();
	}
	return user;  }


public Usuarios conferencia(String email, String senha) {
	Conexao conexao = Conexao.getInstance();
	Connection connection = conexao.getConnection();
	
	Usuarios user = null;
	try {
		PreparedStatement preStat = connection.prepareStatement("select * from usuarios where email = ?");
		preStat.setString(1, email);
		ResultSet resultSet = preStat.executeQuery();
		
		while(resultSet.next()) {
			String email1 = resultSet.getString("email");
			String senha1 = resultSet.getString("senha");
			String nome1 = resultSet.getString("nome");
			Integer id1 = resultSet.getInt("id");
			if (email.equals(email1) && senha.equals(senha)) {
				user = new Usuarios(email1, senha1, nome1);
				user.setId(id1);
				return user;
			} else{
				System.out.println("email ou senha invalidos!");}
			}
		}catch (SQLException e) {

			e.printStackTrace();
		}
	return user;
	
	}
}
	




