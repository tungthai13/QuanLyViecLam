package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ViecLamDAO;
import model.ViecLam;

/**
 * Servlet implementation class suaViecLam
 */
public class suaViecLam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suaViecLam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String idViecLam = request.getParameter("idViecLam");
		String thumbnail = request.getParameter("thumbnail");
		String tieuDe = request.getParameter("tieuDe");
		String tenCongTy = request.getParameter("tenCongTy");
		String diaChi = request.getParameter("diaChi");
		String mucLuong = request.getParameter("mucLuong");
		String moTa = request.getParameter("moTa");
		
		ViecLam vieclam = new ViecLam();
		vieclam.setIdViecLam(Integer.parseInt(idViecLam));
		vieclam.setThumbnail(thumbnail);
		vieclam.setTieuDe(tieuDe);
		vieclam.setTenCongTy(tenCongTy);
		vieclam.setDiaChi(diaChi);
		vieclam.setMucLuong(mucLuong);
		vieclam.setMoTa(moTa);
		
		new ViecLamDAO().suaViecLam(vieclam);
		request.getRequestDispatcher("quanlyvieclam.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
