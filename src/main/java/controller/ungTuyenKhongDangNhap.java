package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoSoDAO;
import dao.UngTuyenDAO;
import model.HoSo;

/**
 * Servlet implementation class ungTuyenKhongDangNhap
 */
public class ungTuyenKhongDangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ungTuyenKhongDangNhap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hoTen = request.getParameter("hoTen");
		String ngaySinh = request.getParameter("ngaySinh");
		String email = request.getParameter("email");
		String sdt = request.getParameter("sdt");
		String cv =null;
		String noiDungUngTuyen = request.getParameter("noiDungUngTuyen");
		int idUser = 0;
		String idViecLam = request.getParameter("idViecLam");
		
		HoSo hoso = new HoSo();
		
		hoso.setHoTen(hoTen);
		hoso.setNgaySinh(Date.valueOf(ngaySinh));
		hoso.setEmail(email);
		hoso.setSdt(Integer.parseInt(sdt));
		hoso.setCv(cv);
		hoso.setNoiDungUngTuyen(noiDungUngTuyen);
		hoso.setIdUser(0);
		hoso.setIdViecLam(Integer.parseInt(idViecLam));
		
		new HoSoDAO().ungTuyen(hoso);
		
		request.getRequestDispatcher("ungtuyenthanhcong.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
