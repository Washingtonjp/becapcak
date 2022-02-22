
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ServletIPVA
 */
@WebServlet("/ServletIPVA")
public class ServletIPVA extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IpvaDAO DAO;
    
 /**
  * @see HttpServlet#HttpServlet()
  */
 public ServletIPVA() {
     super();
     // TODO Auto-generated constructor stub
     DAO = new IpvaDAO(); 
 }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = ("id");
		String ano = request.getParameter("ano");
		String option = request.getParameter("option");
		
		
		if(option.equals("InsertForm")) {
			InsertForm(request, response);
			
		}else if (option.equals("updateForm1")) {
			UpdateForm(request, response);
			
		} else if (option.equals("update")) {
			updateipva(request, response); 
			
		} else if (option.equals("delete1")) {
			deletipva(request, response); 
		}  
		else if (option.equals("Insert")) {
			if  (ano!= null && !ano.equals("")) {			
					 DAO = new IpvaDAO();
					 Ipva ipva = new Ipva (Integer.parseInt(ano));
					 DAO.updateipva(ipva);
			}
			
		}				
		request.setAttribute("lista", DAO.getlistIpva());
		request.getRequestDispatcher("/").forward(request, response);			
	}
	
	
	protected void InsertForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("CadastroIPV.jsp").forward(request, response);		
	}
	
	
	
	protected void UpdateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		Integer id1 = Integer.parseInt(id);
		Ipva userBuscar=  DAO.buscaripva(id1);
		request.setAttribute("user", userBuscar);
		request.getRequestDispatcher("cadastroIPV.jsp").forward(request, response);		
	}
	
		
		
		protected void addipv(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String ano = request.getParameter("ano");
			
			if (ano!= null) {
				
					 DAO = new IpvaDAO();
					 Ipva ipva = new Ipva(Integer.parseInt(ano));
					 DAO.adddipva(ipva);
				}
		}
			protected void deletipva(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
				String id = request.getParameter("id");
				if (id != null) {
					Integer id1 = Integer.parseInt(id);
					DAO = new IpvaDAO();
					DAO.buscaripva(id1);}
			}
				protected void updateipva(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					String ano = request.getParameter("ano");
					if  (ano != null) {
						if (!ano.equals("")){
							DAO = new IpvaDAO();
							Integer id1 = Integer.parseInt(ano);
							Ipva ipva = new Ipva ( Integer.parseInt(ano));
							ipva.setId(id1);
							DAO.updateipva(ipva);	
						}
					} 		
				}
		
					
	}