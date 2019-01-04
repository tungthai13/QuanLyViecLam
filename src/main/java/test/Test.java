package test;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import dao.CongTyDAO;
import dao.LoginDAO;
import dao.NguoiDungDAO;
import dao.TinTucDAO;
import dao.ViecLamDAO;
import model.CongTy;
import model.NguoiDung;
import model.TinTuc;
import model.ViecLam;
import utility.DBConnection;

public class Test {
	
	public static void main(String[] args) {
	
		
	/*	TinTuc t = new TinTuc();
		t.setIdTinTuc(5);
		t.setThumbnail("test");
		t.setTieuDe("test");
		t.setNguoiPost("t123");
		t.setNgayPost(Date.valueOf("2019-01-03"));
		t.setNoiDungVanTat("t123");
		t.setNoiDungChinh("t123");
		new TinTucDAO().suaTinTuc(t);*/
		
		Connection con;
		try {
			con = DBConnection.getConnection();
			String sql = "Select * from nguoidung where userName =? and password = ?";
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			pstm.setString(1, "ntlong0410");
			pstm.setString(2, "123456");
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				NguoiDung user = new NguoiDung();
				user.setIdUser(rs.getInt("idUser"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));				
				user.setHoTen(rs.getString("hoTen"));
				user.setEmail(rs.getString("email"));
				user.setSdt(rs.getInt("sdt"));
				user.setPhanQuyen(rs.getString("phanQuyen"));
				user.setViTriUngTuyen(rs.getString("viTriUngTuyen"));
				user.setAnh(rs.getString("anh"));
				user.setSkype(rs.getString("skype"));
				user.setFacebook(rs.getString("facebook"));
				user.setQueQuan(rs.getString("queQuan"));
				user.setHocVan(rs.getString("hocVan"));
				user.setTruong(rs.getString("truong"));
				user.setKhoa(rs.getString("khoa"));
				user.setNamTotNghiep(rs.getInt("namTotNghiep"));
				user.setKyNang(rs.getString("kyNang"));
				user.setKinhNghiemCongTac(rs.getString("kinhNghiemCongTac"));
				user.setGhiChu(rs.getString("ghiChu"));
				user.setCv(rs.getString("cv"));
				System.out.println(user);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	 
}
