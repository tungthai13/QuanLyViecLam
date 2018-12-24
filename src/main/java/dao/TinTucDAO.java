package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.TinTuc;
import utility.DBConnection;

public class TinTucDAO {

Connection con;
	
	public List<TinTuc> tatCaTinTuc(){
		List<TinTuc> list = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			String sql = "Select * from tintuc";
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
		
	}
	
	  public TinTuc getTinTuc(int idTinTuc){
	        try {
	            con = DBConnection.getConnection();

	            String sql = "Select * from tintuc where idTinTuc = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idTinTuc);
	            
	            ResultSet rs = pstmt.executeQuery();
	            TinTuc tintuc = null;
	            while(rs.next()){
	            	tintuc = new TinTuc();
					tintuc.setIdTinTuc(rs.getInt("idTinTuc"));
					tintuc.setThumbnail(rs.getString("thumbnail"));
					tintuc.setTieuDe(rs.getString("tieuDe"));
					tintuc.setNguoiPost(rs.getString("nguoiPost"));
					tintuc.setNgayPost(rs.getDate("ngayPost"));
					tintuc.setNoiDungVanTat(rs.getString("noiDungVanTat"));
					tintuc.setNoiDungChinh(rs.getString("noiDungChinh"));
	            }
	            
	            return tintuc;
	        } catch (SQLException ex) {
	            Logger.getLogger(TinTucDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(TinTucDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        return null;
	    }
	
	  
	  public List<TinTuc> top8TinTuc(){
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
			
		}
}
