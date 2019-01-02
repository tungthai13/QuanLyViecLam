package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.ViecLam;
import utility.DBConnection;

public class ViecLamDAO {

	Connection con;
	
	public List<ViecLam> tatCaViecLam(){
		List<ViecLam> list = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			String sql = "Select * from vieclam";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			ViecLam vieclam;
			while(rs.next()) {
				vieclam = new ViecLam();
				vieclam.setIdViecLam(rs.getInt("idViecLam"));
				vieclam.setThumbnail(rs.getString("thumbnail"));
				vieclam.setTieuDe(rs.getString("tieuDe"));
				vieclam.setTenCongTy(rs.getString("tenCongTy"));
				vieclam.setDiaChi(rs.getString("diaChi"));
				vieclam.setMucLuong(rs.getString("mucLuong"));
				vieclam.setMoTa(rs.getString("moTa"));
				list.add(vieclam);
			}
			
			return list;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	 public List<ViecLam> timKiemViecLam(String timKiem){
	        List<ViecLam> list = new ArrayList<>();
	        
	        try {
	            con = DBConnection.getConnection();
	            String search = "%"+timKiem+"%";
	            String sql = "Select * from vieclam where tieuDe like ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setString(1, search);
	            
	            ResultSet rs = pstmt.executeQuery();
	            ViecLam vieclam;
	            while(rs.next()){
	            	vieclam = new ViecLam();
					vieclam.setIdViecLam(rs.getInt("idViecLam"));
					vieclam.setThumbnail(rs.getString("thumbnail"));
					vieclam.setTieuDe(rs.getString("tieuDe"));
					vieclam.setTenCongTy(rs.getString("tenCongTy"));
					vieclam.setDiaChi(rs.getString("diaChi"));
					vieclam.setMucLuong(rs.getString("mucLuong"));
					vieclam.setMoTa(rs.getString("moTa"));
	                list.add(vieclam);
	            }
	            
	            return list;
	        } catch (SQLException ex) {
	            Logger.getLogger(ViecLamDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(ViecLamDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        
	        return null;
	    }
	
	  public ViecLam getViecLam(int idViecLam){
	        try {
	            con = DBConnection.getConnection();

	            String sql = "Select * from vieclam where idViecLam = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idViecLam);
	            
	            ResultSet rs = pstmt.executeQuery();
	            ViecLam vieclam = null;
	            while(rs.next()){
	            	vieclam = new ViecLam();
					vieclam.setIdViecLam(rs.getInt("idViecLam"));
					vieclam.setThumbnail(rs.getString("thumbnail"));
					vieclam.setTieuDe(rs.getString("tieuDe"));
					vieclam.setTenCongTy(rs.getString("tenCongTy"));
					vieclam.setDiaChi(rs.getString("diaChi"));
					vieclam.setMucLuong(rs.getString("mucLuong"));
					vieclam.setMoTa(rs.getString("moTa"));
	            }
	            
	            return vieclam;
	        } catch (SQLException ex) {
	            Logger.getLogger(ViecLamDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(ViecLamDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        return null;
	    }
	
	  
	  public List<ViecLam> top8ViecLam(){
			List<ViecLam> list = new ArrayList<>();
			
			try {
				con = DBConnection.getConnection();
				String sql = "SELECT * FROM vieclam ORDER by idViecLam DESC LIMIT 8";
				PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				ViecLam vieclam;
				while(rs.next()) {
					vieclam = new ViecLam();
					vieclam.setIdViecLam(rs.getInt("idViecLam"));
					vieclam.setThumbnail(rs.getString("thumbnail"));
					vieclam.setTieuDe(rs.getString("tieuDe"));
					vieclam.setTenCongTy(rs.getString("tenCongTy"));
					vieclam.setDiaChi(rs.getString("diaChi"));
					vieclam.setMucLuong(rs.getString("mucLuong"));
					vieclam.setMoTa(rs.getString("moTa"));
					list.add(vieclam);
				}
				
				return list;
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return null;
			
		}
	  
	  public boolean themViecLam(ViecLam v){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "insert into vieclam (thumbnail, tieuDe, tenCongTy, diaChi, mucLuong, moTa) values (?,?,?,?,?,?)";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setString(1, v.getThumbnail());
	            pstmt.setString(2, v.getTieuDe());
	            pstmt.setString(3, v.getTenCongTy());
	            pstmt.setString(4, v.getDiaChi());
	            pstmt.setString(5, v.getMucLuong());
	            pstmt.setString(6, v.getMoTa());	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(ViecLamDAO.class.getName()).log(Level.SEVERE, null, ex);
	            return false;
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(ViecLamDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	    }
	  
	  public boolean xoaViecLam(int idViecLam){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "delete from vieclam where idViecLam=?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idViecLam);
	           
	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(ViecLamDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(ViecLamDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        
	        return false;
	    }
	
	  public boolean suaViecLam(ViecLam v){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "update  vieclam set thumbnail = ?, tieuDe = ?, tenCongTy = ?, diaChi = ?, mucLuong = ?, moTa = ? where idViecLam = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setString(1, v.getThumbnail());
	            pstmt.setString(2, v.getTieuDe());
	            pstmt.setString(3, v.getTenCongTy());
	            pstmt.setString(4, v.getDiaChi());
	            pstmt.setString(5, v.getMucLuong());
	            pstmt.setString(6, v.getMoTa());
	            pstmt.setInt(7, v.getIdViecLam());
	            
	           
	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(ViecLamDAO.class.getName()).log(Level.SEVERE, null, ex);
	            return false;
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(ViecLamDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	    }
}
