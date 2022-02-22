package br.com.sistemadelogin.servelets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entidade.Usuarios;

/**
 * Servlet implementation class LoginControllers
 */
@WebServlet("/Login")
public class LoginControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		protected void Update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String id = request.getParameter("id");
			String modelo = request.getParameter("email");
		
		
		
	}


	private void ValidadarDadosRecebidos(HttpServletRequest request) throws ServletException {
		String nomeUsuario = request.getParameter("txtUsuario");
		String senhaUsuario = request.getParameter("txtSenha");
		if (nomeUsuario.trim().equals("") || nomeUsuario.trim().equals("")  )
				throw new ServletException ("um ou mais valores estão vazios");
		else if (nomeUsuario.trim().equals("") || nomeUsuario.trim().equals("")  )
			throw new ServletException ("um ou mais valores estão vazios");
		
	}

}
