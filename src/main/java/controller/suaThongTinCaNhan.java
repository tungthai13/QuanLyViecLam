package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.NguoiDungDAO;
import model.NguoiDung;

/**
 * Servlet implementation class suaThongTinCaNhan
 */
public class suaThongTinCaNhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suaThongTinCaNhan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		NguoiDung user = (NguoiDung) session.getAttribute("user");
		
		String idUser = request.getParameter("idUser");
		String hoTen = request.getParameter("hoTen");
		String email = request.getParameter("email");
		String sdt = request.getParameter("sdt");
		String phanQuyen = request.getParameter("phanQuyen");
		String viTriUngTuyen = request.getParameter("viTriUngTuyen");
		String anh = request.getParameter("anh");
		String skype = request.getParameter("skype");
		String facebook = request.getParameter("facebook");
		String queQuan = request.getParameter("queQuan");
		String hocVan = request.getParameter("hocVan");
		String truong = request.getParameter("truong");
		String khoa = request.getParameter("khoa");
		String namTotNghiep = request.getParameter("namTotNghiep");
		String kyNang = request.getParameter("kyNang");
		String kinhNghiemCongTac = request.getParameter("kinhNghiemCongTac");
		String ghiChu = request.getParameter("ghiChu");
		String cv = request.getParameter("cv");
		String ngaySinh = request.getParameter("ngaySinh");
	
		user.setIdUser(Integer.parseInt(idUser));
		user.setHoTen(hoTen);
		user.setEmail(email);
		user.setSdt(Integer.parseInt(sdt));
		user.setPhanQuyen(phanQuyen);
		user.setViTriUngTuyen(viTriUngTuyen);
		user.setAnh(anh);
		user.setSkype(skype);
		user.setFacebook(facebook);
		user.setQueQuan(queQuan);
		user.setHocVan(hocVan);
		user.setTruong(truong);
		user.setKhoa(khoa);
		user.setNamTotNghiep(Integer.parseInt(namTotNghiep));
		user.setKyNang(kyNang);
		user.setKinhNghiemCongTac(kinhNghiemCongTac);
		user.setGhiChu(ghiChu);
		user.setCv(cv);
		user.setNgaySinh(Date.valueOf(ngaySinh));
		
		
		new NguoiDungDAO().suaNguoiDung(user);
		session.setAttribute("user", user);
		request.setAttribute("user", user);
		request.getRequestDispatcher("trangcanhan.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
