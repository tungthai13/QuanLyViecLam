package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.NguoiDung;
import model.ViecLam;
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
	
	public boolean themNguoiDung(NguoiDung n){
        try {
            int result = 0;
            con = DBConnection.getConnection();
            String sql = "insert into nguoidung (userName, password, hoTen, email, sdt, phanQuyen,viTriUngTuyen,anh,skype,facebook,queQuan,hocVan,truong,khoa,namTotNghiep,kyNang,kinhNghiemCongTac,ghiChu,cv) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
            pstmt.setString(1, n.getUserName());
            pstmt.setString(2, n.getPassword());
            pstmt.setString(3, n.getHoTen());
            pstmt.setString(4, n.getEmail());
            pstmt.setInt(5, n.getSdt());
            pstmt.setString(6, n.getPhanQuyen());
            pstmt.setString(7, n.getViTriUngTuyen());
            pstmt.setString(8, n.getAnh());
            pstmt.setString(9, n.getSkype());
            pstmt.setString(10, n.getFacebook());
            pstmt.setString(11, n.getQueQuan());
            pstmt.setString(12, n.getHocVan());
            pstmt.setString(13, n.getTruong());
            pstmt.setString(14, n.getKhoa());
            pstmt.setInt(15, n.getNamTotNghiep());
            pstmt.setString(16, n.getKyNang());
            pstmt.setString(17, n.getKinhNghiemCongTac());
            pstmt.setString(18, n.getGhiChu());
            pstmt.setString(19, n.getCv());
            int rs = pstmt.executeUpdate();
            
            return rs>0;
        } catch (SQLException ex) {
            Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
	
	
	 public NguoiDung getNguoiDung(int idUser){
	        try {
	            con = DBConnection.getConnection();

	            String sql = "Select * from nguoidung where idUser = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            pstmt.setInt(1, idUser);
	            
	            ResultSet rs = pstmt.executeQuery();
	            NguoiDung nguoidung = null;
	            while(rs.next()){
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
	            }
	            
	            return nguoidung;
	        } catch (SQLException ex) {
	            Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	        return null;
	    }
	
	
	public boolean xoaNguoiDung(int idUser){
        try {
            int result = 0;
            con = DBConnection.getConnection();
            String sql = "delete from nguoidung where idUser=?";
            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
            pstmt.setInt(1, idUser);
           
            
            int rs = pstmt.executeUpdate();
            
            return rs>0;
        } catch (SQLException ex) {
            Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return false;
    }
	
	
	  public boolean suaNguoiDung(NguoiDung n){
	        try {
	            int result = 0;
	            con = DBConnection.getConnection();
	            String sql = "update  nguoidung set hoTen = ?, email = ?, sdt = ?, phanQuyen = ?, viTriUngTuyen =?, anh =?, skype=?, facebook=?,queQuan=?,hocVan=?,truong=?,khoa=?,namTotNghiep=?,kyNang=?,kinhNghiemCongTac=?,ghiChu=?,cv=? where idUser = ?";
	            PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
	            
	           
	            pstmt.setString(1, n.getHoTen());
	            pstmt.setString(2, n.getEmail());
	            pstmt.setInt(3, n.getSdt());
	            pstmt.setString(4, n.getPhanQuyen());
	            pstmt.setString(5, n.getViTriUngTuyen());
	            pstmt.setString(6, n.getAnh());
	            pstmt.setString(7, n.getSkype());
	            pstmt.setString(8, n.getFacebook());
	            pstmt.setString(9, n.getQueQuan());
	            pstmt.setString(10, n.getHocVan());
	            pstmt.setString(11, n.getTruong());
	            pstmt.setString(12, n.getKhoa());
	            pstmt.setInt(13, n.getNamTotNghiep());
	            pstmt.setString(14, n.getKyNang());
	            pstmt.setString(15, n.getKinhNghiemCongTac());
	            pstmt.setString(16, n.getGhiChu());
	            pstmt.setString(17, n.getCv());
	            pstmt.setInt(18, n.getIdUser());
	           
	            
	            int rs = pstmt.executeUpdate();
	            
	            return rs>0;
	        } catch (SQLException ex) {
	            Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
	            return false;
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException ex) {
	                Logger.getLogger(NguoiDungDAO.class.getName()).log(Level.SEVERE, null, ex);
	            }
	        }
	    }
}
