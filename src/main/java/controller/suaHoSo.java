package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoSoDAO;
import model.HoSo;

/**
 * Servlet implementation class suaHoSo
 */
public class suaHoSo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suaHoSo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String idHoSo = request.getParameter("idHoSo");
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
		
		hoso.setIdHoSo(Integer.parseInt(idHoSo));
		hoso.setHoTen(hoTen);
		hoso.setNgaySinh(Date.valueOf(ngaySinh));
		hoso.setEmail(email);
		hoso.setSdt(Integer.parseInt(sdt));
		hoso.setCv(cv);
		hoso.setNoiDungUngTuyen(noiDungUngTuyen);
		hoso.setIdUser(Integer.parseInt(idUser));
		hoso.setIdViecLam(Integer.parseInt(idViecLam));
		hoso.setTrangThai(trangThai);
		
		new HoSoDAO().suaHoSo(hoso);
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
