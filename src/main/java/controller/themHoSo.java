package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoSoDAO;
import dao.NguoiDungDAO;
import dao.ViecLamDAO;
import model.HoSo;
import model.ViecLam;

/**
 * Servlet implementation class themHoSo
 */
public class themHoSo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themHoSo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String hoTen = request.getParameter("hoTen");
		String ngaySinh = request.getParameter("ngaySinh");
		String email = request.getParameter("email");
		String sdt = request.getParameter("sdt");
		String cv = request.getParameter("cv");
		String noiDungUngTuyen = request.getParameter("noiDungUngTuyen");
		String idUser = request.getParameter("idUser");
		String idViecLam = request.getParameter("idViecLam");
		String trangThai = request.getParameter("trangThai");
		
		HoSo hoso = new HoSo();
		
		hoso.setHoTen(hoTen);
		hoso.setNgaySinh(Date.valueOf(ngaySinh));
		hoso.setEmail(email);
		hoso.setSdt(Integer.parseInt(sdt));
		hoso.setCv(cv);
		hoso.setNoiDungUngTuyen(noiDungUngTuyen);
		hoso.setIdUser(Integer.parseInt(idUser));
		hoso.setIdViecLam(Integer.parseInt(idViecLam));
		hoso.setTrangThai(trangThai);
		
		new HoSoDAO().themHoSo(hoso);
		request.getRequestDispatcher("quanlyhoso.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
