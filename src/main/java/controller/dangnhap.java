package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import dao.LoginDAO;
import model.NguoiDung;
import utility.DBConnection;


/**
 * Servlet implementation class login
 */
public class dangnhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		

		try {
			Connection con;
			con = DBConnection.getConnection();
			String sql = "Select * from nguoidung where userName =? and password = ?";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			pstm.setString(1, username);
			pstm.setString(2, password);
			ResultSet rs = pstm.executeQuery();
			
			while(rs.next()) {
				HttpSession session = request.getSession(true);
				NguoiDung user = new NguoiDung();
				user.setIdUser(rs.getInt("idUser"));
				user.setUserName(username);
				user.setPassword(rs.getString("password"));				
				user.setHoTen(rs.getString("hoTen"));
				user.setEmail(rs.getString("email"));
				user.setSdt(rs.getInt("sdt"));
				user.setPhanQuyen(rs.getString("phanQuyen"));
				user.setViTriUngTuyen(rs.getString("viTriUngTuyen"));
				user.setAnh(rs.getString("anh"));
				user.setSkype(rs.getString("skype"));
				user.setFacebook(rs.getString("facebook"));
				user.setQueQuan(rs.getString("queQuan"));
				user.setHocVan(rs.getString("hocVan"));
				user.setTruong(rs.getString("truong"));
				user.setKhoa(rs.getString("khoa"));
				user.setNamTotNghiep(rs.getInt("namTotNghiep"));
				user.setKyNang(rs.getString("kyNang"));
				user.setKinhNghiemCongTac(rs.getString("kinhNghiemCongTac"));
				user.setGhiChu(rs.getString("ghiChu"));
				user.setCv(rs.getString("cv"));
				session.setAttribute("user", user);
				request.getRequestDispatcher("trangchu.jsp").forward(request, response);
			}
			response.sendRedirect("error.jsp");
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		

		try {
			Connection con;
			con = DBConnection.getConnection();
			String sql = "Select * from nguoidung where userName =? and password = ?";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			pstm.setString(1, username);
			pstm.setString(2, password);
			ResultSet rs = pstm.executeQuery();
			NguoiDung user = null;
			while(rs.next()) {
				HttpSession session = request.getSession(true);
				user = new NguoiDung();
				user.setIdUser(rs.getInt("idUser"));
				user.setUserName(username);
				user.setPassword(rs.getString("password"));				
				user.setHoTen(rs.getString("hoTen"));
				user.setEmail(rs.getString("email"));
				user.setSdt(rs.getInt("sdt"));
				user.setPhanQuyen(rs.getString("phanQuyen"));
				user.setViTriUngTuyen(rs.getString("viTriUngTuyen"));
				user.setAnh(rs.getString("anh"));
				user.setSkype(rs.getString("skype"));
				user.setFacebook(rs.getString("facebook"));
				user.setQueQuan(rs.getString("queQuan"));
				user.setHocVan(rs.getString("hocVan"));
				user.setTruong(rs.getString("truong"));
				user.setKhoa(rs.getString("khoa"));
				user.setNamTotNghiep(rs.getInt("namTotNghiep"));
				user.setKyNang(rs.getString("kyNang"));
				user.setKinhNghiemCongTac(rs.getString("kinhNghiemCongTac"));
				user.setGhiChu(rs.getString("ghiChu"));
				user.setCv(rs.getString("cv"));
				session.setAttribute("user", user);
				request.getRequestDispatcher("trangchu.jsp").forward(request, response);
			}
			
			if (user == null) {
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
