package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.Admin;
import model.CongTy;
import utility.DBConnection;

public class AdminDAO {

Connection con;
	
	public List<Admin> tatCaAdmin(){
		List<Admin> list = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			String sql = "Select * from admin";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			Admin admin;
			while(rs.next()) {
				admin = new Admin();
				admin.setIdAdmin(rs.getInt("idAdmin"));
				admin.setUserName(rs.getString("userName"));
				admin.setPassword(rs.getString("password"));
				admin.setQuyen(rs.getString("quyen"));
				list.add(admin);
			}
			
			return list;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	  public Admin getAdmin(int idAdmin){
	        try {
	            con = DBConnection.getConnection();

	            String sql = "Select * from admin where idAdmin = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idAdmin);
	            
	            ResultSet rs = pstmt.executeQuery();
	            Admin admin = new Admin();
				while(rs.next()) {
					admin.setIdAdmin(rs.getInt("idAdmin"));
					admin.setUserName(rs.getString("userName"));
					admin.setPassword(rs.getString("password"));
					admin.setQuyen(rs.getString("quyen"));
	            }
	            
	            return admin;
	        } catch (SQLException ex) {
	            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        return null;
	    }
	
	  
	 /* public List<TinTuc> top8TinTuc(){
			List<TinTuc> list = new ArrayList<>();
			
			try {
				con = DBConnection.getConnection();
				String sql = "SELECT * FROM tintuc ORDER by idTinTuc DESC LIMIT 8";
				PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				TinTuc tintuc;
				while(rs.next()) {
					tintuc = new TinTuc();
					tintuc.setIdTinTuc(rs.getInt("idTinTuc"));
					tintuc.setThumbnail(rs.getString("thumbnail"));
					tintuc.setTieuDe(rs.getString("tieuDe"));
					tintuc.setNguoiPost(rs.getString("nguoiPost"));
					tintuc.setNgayPost(rs.getDate("ngayPost"));
					tintuc.setNoiDungVanTat(rs.getString("noiDungVanTat"));
					tintuc.setNoiDungChinh(rs.getString("noiDungChinh"));
					list.add(tintuc);
				}
				
				return list;
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return null;
			
		}*/
	  
	  public boolean themAdmin(Admin a){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "insert into admin (userName, password, quyen) values (?,?,?)";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setString(1, a.getUserName());
	            pstmt.setString(2,a.getPassword());
	            pstmt.setString(3, a.getQuyen());
	       	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
	            return false;
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	    }
	  
	  public boolean xoaAdmin(int idAdmin){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "delete from admin where idAdmin=?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idAdmin);
	           
	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        
	        return false;
	    }
	  
	  public boolean suaAdmin(Admin a){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "update  admin set userName = ?, password = ?, quyen = ? where idAdmin = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setString(1, a.getUserName());
	            pstmt.setString(2,a.getPassword());
	            pstmt.setString(3, a.getQuyen());
	            pstmt.setInt(4, a.getIdAdmin());
	    
	            

	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
	            return false;
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	    }
}
