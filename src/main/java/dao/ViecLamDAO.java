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
	
	
	
	
}
