package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ViecLamDAO;
import model.ViecLam;

/**
 * Servlet implementation class themViecLam
 */
public class themViecLam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themViecLam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String thumbnail = request.getParameter("thumbnail");
		String tieuDe = request.getParameter("tieuDe");
		String idCongTy = request.getParameter("idCongTy");
		String diaChi = request.getParameter("diaChi");
		String mucLuong = request.getParameter("mucLuong");
		String moTa = request.getParameter("moTa");
		
		ViecLam vieclam = new ViecLam();
		
		vieclam.setThumbnail(thumbnail);
		vieclam.setTieuDe(tieuDe);
		vieclam.setIdCongTy(Integer.parseInt(idCongTy));;
		vieclam.setDiaChi(diaChi);
		vieclam.setMucLuong(mucLuong);
		vieclam.setMoTa(moTa);
		
		new ViecLamDAO().themViecLam(vieclam);
		request.getRequestDispatcher("quanlyvieclam.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		doGet(request, response);
	}

}
