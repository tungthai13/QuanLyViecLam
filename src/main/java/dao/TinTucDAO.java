package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.TinTuc;
import model.ViecLam;
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
}
