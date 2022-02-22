import java.util.Scanner;

import DAO.Usuariodao;
import entidade.Usuarios;

public class test {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Usuariodao dao = new Usuariodao();
		String login, senha;
		
		System.out.printf("informe login: ");
		login = sc.next();
		System.out.println();
		System.out.printf("informe senha: ");
		senha = sc.next(); 
		
		if(dao.conferencia(login, senha) != null) {
			Usuarios user = dao.conferencia(login, senha);
			System.out.println("Olá " + user.getNome() + " vc está logando!");
		} else {
			System.out.println("errrou!");
		}

		





	
	



sc.close();


}
	}


