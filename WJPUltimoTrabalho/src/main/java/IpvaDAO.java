
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class IpvaDAO {

	
	public void adddipva(Ipva newIpva) {
		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();
		
		try {
			PreparedStatement preStat = connection.prepareStatement("insert into ipva (ano) values (?)");
			preStat.setInt(1, newIpva.getAno());
			System.out.println(preStat);
			preStat.executeUpdate();
			System.out.println("Comando executado");
			preStat.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		
	}
		
	public ArrayList<Ipva> getlistIpva(){
		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();
		ArrayList<Ipva> lista = new ArrayList<Ipva>();
		try {
			PreparedStatement preStat = connection.prepareStatement("select * from ipva");
			ResultSet resultSet = preStat.executeQuery();			
		
			while (resultSet.next()) {
			Integer id2 = resultSet.getInt("id");
				Integer ano = resultSet.getInt("ano");
				Ipva ipva = new Ipva(ano);
				ipva.setId(id2);
				lista.add(ipva);
			}
			resultSet.close();
			preStat.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}
		
	public void removeripva(Integer id) {
		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();
		
		try {
			PreparedStatement preStat = connection.prepareStatement("delete from ipva where id = ?");
			preStat.setInt(1, id);
			System.out.println(preStat);
			preStat.executeUpdate();
			System.out.println("Comando executado");
			preStat.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateipva(Ipva updateipva) {
		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();
		
		try {
			PreparedStatement preStat = connection.prepareStatement("update ipva set  ano = ? where id = ?");
			preStat.setInt(1, updateipva.getAno());
			preStat.setDouble(2, updateipva.getId());
			System.out.println(preStat);
			preStat.executeUpdate();
			System.out.println("Comando executado");
			preStat.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} 
	
	public Ipva buscaripva(Integer id) {
		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();
		Ipva ipva = null;
		try {
			PreparedStatement preStat = connection.prepareStatement("select * from ipva where id = ?");
			preStat.setInt(1, id);
			ResultSet resultSet = preStat.executeQuery();			
			while ( resultSet.next()) {
				
				Integer ida = resultSet.getInt("id");
				Integer ano = resultSet.getInt("ano");
				ipva = new Ipva(ano);
				ipva.setId(ida);
				
			}
			 resultSet.close();
			 preStat.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return ipva;
	}}
	
	