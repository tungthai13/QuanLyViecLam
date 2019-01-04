package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		String idUser = request.getParameter("idUser");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
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
		
		NguoiDung nguoidung = new NguoiDung();
		
		nguoidung.setIdUser(Integer.parseInt(idUser));
		nguoidung.setUserName(userName);
		nguoidung.setPassword(password);
		nguoidung.setHoTen(hoTen);
		nguoidung.setEmail(email);
		nguoidung.setSdt(Integer.parseInt(sdt));
		nguoidung.setPhanQuyen(phanQuyen);
		nguoidung.setViTriUngTuyen(viTriUngTuyen);
		nguoidung.setAnh(anh);
		nguoidung.setSkype(skype);
		nguoidung.setFacebook(facebook);
		nguoidung.setQueQuan(queQuan);
		nguoidung.setHocVan(hocVan);
		nguoidung.setTruong(truong);
		nguoidung.setKhoa(khoa);
		nguoidung.setNamTotNghiep(Integer.parseInt(namTotNghiep));
		nguoidung.setKyNang(kyNang);
		nguoidung.setKinhNghiemCongTac(kinhNghiemCongTac);
		nguoidung.setGhiChu(ghiChu);
		nguoidung.setCv(cv);
		
		
		new NguoiDungDAO().suaNguoiDung(nguoidung);
		request.getRequestDispatcher("quanlynguoidung.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
