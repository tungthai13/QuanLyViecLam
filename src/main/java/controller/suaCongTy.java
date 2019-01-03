package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CongTyDAO;
import model.CongTy;

/**
 * Servlet implementation class suaCongTy
 */
public class suaCongTy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suaCongTy() {
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
		
		String idCongTy = request.getParameter("idCongTy");
		String tenCongTy = request.getParameter("tenCongTy");
		String namThanhLap = request.getParameter("namThanhLap");
		String idAdmin = request.getParameter("idAdmin");

		CongTy congty = new CongTy();
		
		congty.setIdCongTy(Integer.parseInt(idCongTy));
		congty.setTenCongTy(tenCongTy);
		congty.setNamThanhLap(Integer.parseInt(namThanhLap));
		congty.setIdAdmin(Integer.parseInt(idAdmin));
		
		
		new CongTyDAO().suaCongTy(congty);
		request.getRequestDispatcher("quanlycongty.jsp").forward(request, response);
	}

}
