package com.br.Sistemadelogin.Servelet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Usuariodao;
import entidade.Usuarios;

/**
 * Servlet implementation class Serveletlogin
 */
@WebServlet("/Serveletlogin")
public class Serveletlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Usuariodao DAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Serveletlogin() {
        super();
        DAO = new Usuariodao(); 
        // TODO Auto-generated constructor stub
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String opcao = request.getParameter("opcao");
		
		if(opcao.equals("Entrar")) {
			conferencia(request, response);}
			request.getRequestDispatcher("LoginController").forward(request, response);
			
	}
		protected void conferencia(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String email = request.getParameter("email");
			String nome = request.getParameter("nome");
			String senha = request.getParameter("senha");
			String id = request.getParameter("id");
			
			if(DAO.conferencia(email, senha) != null) {
				Usuarios user = DAO.conferencia(email, senha);
				System.out.println("Olá " + user.getNome() + " vc está logando!");
			} else {
				System.out.println("errrou!");
			}

			DAO.conferencia(email, senha);
			
		  
		}
}


