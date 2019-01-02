package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.HoSo;
import model.ViecLam;
import utility.DBConnection;

public class HoSoDAO {

Connection con;
	
	public List<HoSo> tatCaHoSo(){
		List<HoSo> list = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			String sql = "Select * from hosoungtuyen";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			HoSo hoso;
			while(rs.next()) {
				hoso = new HoSo();
				hoso.setIdHoSo(rs.getInt("idHoSo"));
				hoso.setHoTen(rs.getString("hoTen"));
				hoso.setNgaySinh(rs.getDate("ngaySinh"));
				hoso.setEmail(rs.getString("email"));
				hoso.setSdt(rs.getInt("sdt"));
				hoso.setCv(rs.getString("cv"));
				hoso.setNoiDungUngTuyen(rs.getString("noiDungUngTuyen"));
				hoso.setIdUser(rs.getInt("idUser"));
				hoso.setIdViecLam(rs.getInt("idViecLam"));
				list.add(hoso);
			}
			
			return list;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
}
	
	 public HoSo getHoSo(int idHoSo){
	        try {
	            con = DBConnection.getConnection();

	            String sql = "Select * from hosoungtuyen where idHoSo = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idHoSo);
	            
	            ResultSet rs = pstmt.executeQuery();
	            HoSo hoso = null;
	            while(rs.next()){
	            	hoso = new HoSo();
					hoso.setIdHoSo(rs.getInt("idHoSo"));
					hoso.setHoTen(rs.getString("hoTen"));
					hoso.setNgaySinh(rs.getDate("ngaySinh"));
					hoso.setEmail(rs.getString("email"));
					hoso.setSdt(rs.getInt("sdt"));
					hoso.setCv(rs.getString("cv"));
					hoso.setNoiDungUngTuyen(rs.getString("noiDungUngTuyen"));
					hoso.setIdUser(rs.getInt("idUser"));
					hoso.setIdViecLam(rs.getInt("idViecLam"));
	            }
	            
	            return hoso;
	        } catch (SQLException ex) {
	            Logger.getLogger(HoSoDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(HoSoDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        return null;
	    }
	
	 
	 
	  public boolean themHoSo(HoSo h){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "insert into hosoungtuyen (hoTen, ngaySinh, email, sdt, cv, noiDungUngTuyen,idUser,idViecLam) values (?,?,?,?,?,?,?,?)";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setString(1, h.getHoTen());
	            pstmt.setDate(2, h.getNgaySinh());
	            pstmt.setString(3, h.getEmail());
	            pstmt.setInt(4, h.getSdt());
	            pstmt.setString(5, h.getCv());
	            pstmt.setString(6, h.getNoiDungUngTuyen());
	            pstmt.setInt(7, h.getIdUser());
	            pstmt.setInt(8, h.getIdViecLam()); 
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(HoSoDAO.class.getName()).log(Level.SEVERE, null, ex);
	            return false;
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(HoSoDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	    }
	  
	  public boolean xoaHoSo(int idHoSo){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "delete from hosoungtuyen where idHoSo=?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idHoSo);
	           
	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(HoSoDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(HoSoDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        
	        return false;
	    }
	  
	  public boolean suaHoSo(HoSo h){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "update  hosoungtuyen set hoTen = ?, ngaySinh = ?, email = ?, sdt = ?, cv = ?, noiDungUngTuyen = ?,idUser=?,idViecLam=? where idHoSo = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            
	            pstmt.setString(1, h.getHoTen());
	            pstmt.setDate(2, h.getNgaySinh());
	            pstmt.setString(3, h.getEmail());
	            pstmt.setInt(4, h.getSdt());
	            pstmt.setString(5, h.getCv());
	            pstmt.setString(6, h.getNoiDungUngTuyen());
	            pstmt.setInt(7, h.getIdUser());
	            pstmt.setInt(8, h.getIdViecLam()); 
	            pstmt.setInt(9, h.getIdHoSo());
	            
	           
	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(HoSoDAO.class.getName()).log(Level.SEVERE, null, ex);
	            return false;
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(HoSoDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	    }
	  
	  
}