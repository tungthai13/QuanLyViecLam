package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NguoiDungDAO;
import model.NguoiDung;

/**
 * Servlet implementation class dangKy
 */
public class dangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangKy() {
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
		String userName = request.getParameter("userName").trim();
		String password = request.getParameter("password").trim();
		String replayPassword = request.getParameter("replayPassword").trim();
		
		NguoiDung nguoidung = new NguoiDungDAO().getNguoiDungByUserName(userName);
		
		if(nguoidung == null && password.equals(replayPassword)) {
			
			new NguoiDungDAO().dangky(userName,password);
			request.getRequestDispatcher("thanhcong.jsp").forward(request, response);
	
		}else {
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
	}

}
