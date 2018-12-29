package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.NguoiDung;
import model.ViecLam;
import utility.DBConnection;

public class LoginDAO {
	static Connection con;
	
	public static boolean validate(String username, String password) {
		boolean status=false;  
		try {
			con = DBConnection.getConnection();
			String sql = "Select * from nguoidung where userName =? and password = ?";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			pstm.setString(1, username);
			pstm.setString(2, password);
			ResultSet rs = pstm.executeQuery();
			status = rs.next();
			
		} catch (SQLException e) {
			
		}
		return status;
	
	}
}
