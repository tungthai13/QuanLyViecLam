package dao;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.UngTuyen;
import model.ViecLam;
import utility.DBConnection;

public class UngTuyenDAO {
	Connection con ;
	 public boolean themUngTuyen(int idViecLam, int idHoSo, String trangThai){
	        
	        
	        
			try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "insert into ungtuyen (idViecLam, idHoSo, trangThai) values (?,?,?)";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idViecLam);
	            pstmt.setInt(2, idHoSo);
	            pstmt.setString(3, trangThai);
	     	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(UngTuyenDAO.class.getName()).log(Level.SEVERE, null, ex);
	            return false;
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(UngTuyenDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	    }
}
