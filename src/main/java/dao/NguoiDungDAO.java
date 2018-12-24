package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.NguoiDung;
import utility.DBConnection;

public class NguoiDungDAO {

Connection con;
	
	public List<NguoiDung> tatCaNguoiDung(){
		List<NguoiDung> list = new ArrayList<>();
		
		try {
			con = DBConnection.getConnection();
			String sql = "Select * from nguoidung";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			NguoiDung nguoidung;
			while(rs.next()) {
				nguoidung = new NguoiDung();
				nguoidung.setIdUser(rs.getInt("idUser"));
				nguoidung.setUserName(rs.getString("userName"));
				nguoidung.setPassword(rs.getString("password"));				
				nguoidung.setHoTen(rs.getString("hoTen"));
				nguoidung.setEmail(rs.getString("email"));
				nguoidung.setSdt(rs.getInt("sdt"));
				nguoidung.setPhanQuyen(rs.getString("phanQuyen"));
				nguoidung.setViTriUngTuyen(rs.getString("viTriUngTuyen"));
				nguoidung.setAnh(rs.getString("anh"));
				nguoidung.setSkype(rs.getString("skype"));
				nguoidung.setFacebook(rs.getString("facebook"));
				nguoidung.setQueQuan(rs.getString("queQuan"));
				nguoidung.setHocVan(rs.getString("hocVan"));
				nguoidung.setTruong(rs.getString("truong"));
				nguoidung.setKhoa(rs.getString("khoa"));
				nguoidung.setNamTotNghiep(rs.getInt("namTotNghiep"));
				nguoidung.setKyNang(rs.getString("kyNang"));
				nguoidung.setKinhNghiemCongTac(rs.getString("kinhNghiemCongTac"));
				nguoidung.setGhiChu(rs.getString("ghiChu"));
				nguoidung.setCv(rs.getString("cv"));
				list.add(nguoidung);
			}
			
			return list;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
}
}
