package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;
import model.Admin;

/**
 * Servlet implementation class suaAdmin
 */
public class suaAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suaAdmin() {
        super();
        // TODO Auto-generated constructor stub
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
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String idAdmin = request.getParameter("idAdmin");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String quyen = request.getParameter("quyen");

		Admin admin = new Admin();
		
		admin.setIdAdmin(Integer.parseInt(idAdmin));
		admin.setUserName(userName);
		admin.setPassword(password);
		admin.setQuyen(quyen);
		
		
		new AdminDAO().suaAdmin(admin);
		request.getRequestDispatcher("quanlyadmin.jsp").forward(request, response);
	}

}
