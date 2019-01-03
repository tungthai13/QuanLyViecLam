package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.CongTy;
import model.TinTuc;
import utility.DBConnection;

public class CongTyDAO {

Connection con;
	
	public List<CongTy> tatCaCongTy(){
		List<CongTy> list = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			String sql = "Select * from congty";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			CongTy congty;
			while(rs.next()) {
				congty = new CongTy();
				congty.setIdCongTy(rs.getInt("idCongTy"));
				congty.setTenCongTy(rs.getString("tenCongTy"));
				congty.setNamThanhLap(rs.getInt("namThanhLap"));
				congty.setIdAdmin(rs.getInt("idAdmin"));
				list.add(congty);
			}
			
			return list;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	  public CongTy getCongTy(int idCongTy){
	        try {
	            con = DBConnection.getConnection();

	            String sql = "Select * from congty where idCongTy = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idCongTy);
	            
	            ResultSet rs = pstmt.executeQuery();
	            CongTy congty = new CongTy();
				while(rs.next()) {
					congty.setIdCongTy(rs.getInt("idCongTy"));
					congty.setTenCongTy(rs.getString("tenCongTy"));
					congty.setNamThanhLap(rs.getInt("namThanhLap"));
					congty.setIdAdmin(rs.getInt("idAdmin"));
	            }
	            
	            return congty;
	        } catch (SQLException ex) {
	            Logger.getLogger(CongTyDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(CongTyDAO.class.getName()).log(Level.SEVERE, null, ex);
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
	  
	  public boolean themCongTy(CongTy c){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "insert into congty (tenCongTy, namThanhLap, idAdmin) values (?,?,?)";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setString(1, c.getTenCongTy());
	            pstmt.setInt(2,c.getNamThanhLap());
	            pstmt.setInt(3, c.getIdAdmin());
	       	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(CongTyDAO.class.getName()).log(Level.SEVERE, null, ex);
	            return false;
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(CongTyDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	    }
	  
	  public boolean xoaCongTy(int idCongTy){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "delete from congty where idCongTy=?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idCongTy);
	           
	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(CongTyDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(CongTyDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        
	        return false;
	    }
	  
	  public boolean suaCongTy(CongTy c){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "update  congty set tenCongTy = ?, namThanhLap = ?, idAdmin = ? where idCongTy = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setString(1, c.getTenCongTy());
	            pstmt.setInt(2,c.getNamThanhLap());
	            pstmt.setInt(3, c.getIdAdmin());
	            pstmt.setInt(4, c.getIdCongTy());
	    
	            

	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(CongTyDAO.class.getName()).log(Level.SEVERE, null, ex);
	            return false;
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(CongTyDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	    }
}
