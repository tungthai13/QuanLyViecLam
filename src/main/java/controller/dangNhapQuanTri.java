package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.Admin;
import model.NguoiDung;
import utility.DBConnection;

/**
 * Servlet implementation class dangNhapQuanTri
 */
public class dangNhapQuanTri extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangNhapQuanTri() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName").trim();
		String password = request.getParameter("password").trim();
		

		try {
			Connection con;
			con = DBConnection.getConnection();
			String sql = "Select * from admin where userName =? and password = ?";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			pstm.setString(1, userName);
			pstm.setString(2, password);
			ResultSet rs = pstm.executeQuery();
			Admin admin = null;
			
			while(rs.next()) {
				HttpSession session1 = request.getSession(true);
				admin = new Admin();
				
				admin.setIdAdmin(rs.getInt("idAdmin"));
				admin.setUserName(userName);
				admin.setPassword(password);
				admin.setQuyen(rs.getString("quyen"));
				
				session1.setAttribute("admin", admin);
				request.getRequestDispatcher("nav.jsp").forward(request, response);
			}
			if (admin == null) {
				request.getRequestDispatcher("loidangnhap.jsp").forward(request, response);
			}
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName").trim();
		String password = request.getParameter("password").trim();
		

		try {
			Connection con;
			con = DBConnection.getConnection();
			String sql = "Select * from admin where userName =? and password = ?";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			pstm.setString(1, userName);
			pstm.setString(2, password);
			ResultSet rs = pstm.executeQuery();
			Admin admin = null;
			
			while(rs.next()) {
				HttpSession session1 = request.getSession(true);
				admin = new Admin();
				
				admin.setIdAdmin(rs.getInt("idAdmin"));
				admin.setUserName(userName);
				admin.setPassword(password);
				admin.setQuyen(rs.getString("quyen"));
				
				session1.setAttribute("admin", admin);
				request.getRequestDispatcher("quanly.jsp").forward(request, response);
			}
			if (admin == null) {
				request.getRequestDispatcher("loidangnhap.jsp").forward(request, response);
			}
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
	}

}
