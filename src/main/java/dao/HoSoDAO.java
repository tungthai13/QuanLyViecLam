package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.HoSo;
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
}