package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TinTucDAO;
import model.TinTuc;

/**
 * Servlet implementation class suaTinTuc
 */
public class suaTinTuc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suaTinTuc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		String idTinTuc = request.getParameter("idTinTuc");
		String thumbnail = request.getParameter("thumbnail");
		String tieuDe = request.getParameter("tieuDe");
		String nguoiPost = request.getParameter("nguoiPost");
		String ngayPost = request.getParameter("ngayPost");
		String noiDungVanTat = request.getParameter("noiDungVanTat");
		String noiDungChinh = request.getParameter("noiDungChinh");
		
		TinTuc tintuc = new TinTuc();
		tintuc.setIdTinTuc(Integer.parseInt(idTinTuc));
		tintuc.setThumbnail(thumbnail);
		tintuc.setTieuDe(tieuDe);
		tintuc.setNguoiPost(nguoiPost);
		tintuc.setNgayPost(Date.valueOf(ngayPost));
		tintuc.setNoiDungVanTat(noiDungVanTat);
		tintuc.setNoiDungChinh(noiDungChinh);
		
		new TinTucDAO().suaTinTuc(tintuc);
		request.getRequestDispatcher("quanlytintuc.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
