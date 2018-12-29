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
				user.setUserName(username);
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
			
			while(rs.next()) {
				HttpSession session = request.getSession(true);
				NguoiDung user = new NguoiDung();
				user.setUserName(username);
				session.setAttribute("user", user);
				request.getRequestDispatcher("trangchu.jsp").forward(request, response);
			}
			response.sendRedirect("error.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
