package model;

import java.sql.Date;

public class NguoiDung {

	private int idUser;
	private String userName;
	private String password;
	private String hoTen;
	private String email;
	private int sdt;
	private String phanQuyen;
	private String viTriUngTuyen;
	private String anh;
	private String skype;
	private String facebook;
	private String queQuan;
	private String hocVan;
	private String truong;
	private String khoa;
	private int namTotNghiep;
	private String kyNang;
	private String kinhNghiemCongTac;
	private String ghiChu;
	private String cv;
	private Date ngaySinh;
	
	public NguoiDung() {
		
	}


	

	public NguoiDung(int idUser, String userName, String password, String hoTen, String email, int sdt,
			String phanQuyen, String viTriUngTuyen, String anh, String skype, String facebook, String queQuan,
			String hocVan, String truong, String khoa, int namTotNghiep, String kyNang, String kinhNghiemCongTac,
			String ghiChu, String cv, Date ngaySinh) {
		super();
		this.idUser = idUser;
		this.userName = userName;
		this.password = password;
		this.hoTen = hoTen;
		this.email = email;
		this.sdt = sdt;
		this.phanQuyen = phanQuyen;
		this.viTriUngTuyen = viTriUngTuyen;
		this.anh = anh;
		this.skype = skype;
		this.facebook = facebook;
		this.queQuan = queQuan;
		this.hocVan = hocVan;
		this.truong = truong;
		this.khoa = khoa;
		this.namTotNghiep = namTotNghiep;
		this.kyNang = kyNang;
		this.kinhNghiemCongTac = kinhNghiemCongTac;
		this.ghiChu = ghiChu;
		this.cv = cv;
		this.ngaySinh = ngaySinh;
	}




	public int getIdUser() {
		return idUser;
	}


	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getHoTen() {
		return hoTen;
	}


	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getSdt() {
		return sdt;
	}


	public void setSdt(int sdt) {
		this.sdt = sdt;
	}


	public String getPhanQuyen() {
		return phanQuyen;
	}


	public void setPhanQuyen(String phanQuyen) {
		this.phanQuyen = phanQuyen;
	}


	public String getViTriUngTuyen() {
		return viTriUngTuyen;
	}


	public void setViTriUngTuyen(String viTriUngTuyen) {
		this.viTriUngTuyen = viTriUngTuyen;
	}


	public String getAnh() {
		return anh;
	}


	public void setAnh(String anh) {
		this.anh = anh;
	}


	public String getSkype() {
		return skype;
	}


	public void setSkype(String skype) {
		this.skype = skype;
	}


	public String getFacebook() {
		return facebook;
	}


	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}


	public String getQueQuan() {
		return queQuan;
	}


	public void setQueQuan(String queQuan) {
		this.queQuan = queQuan;
	}


	public String getHocVan() {
		return hocVan;
	}


	public void setHocVan(String hocVan) {
		this.hocVan = hocVan;
	}


	public String getTruong() {
		return truong;
	}


	public void setTruong(String truong) {
		this.truong = truong;
	}


	public String getKhoa() {
		return khoa;
	}


	public void setKhoa(String khoa) {
		this.khoa = khoa;
	}


	public int getNamTotNghiep() {
		return namTotNghiep;
	}


	public void setNamTotNghiep(int namTotNghiep) {
		this.namTotNghiep = namTotNghiep;
	}


	public String getKyNang() {
		return kyNang;
	}


	public void setKyNang(String kyNang) {
		this.kyNang = kyNang;
	}


	public String getKinhNghiemCongTac() {
		return kinhNghiemCongTac;
	}


	public void setKinhNghiemCongTac(String kinhNghiemCongTac) {
		this.kinhNghiemCongTac = kinhNghiemCongTac;
	}


	public String getGhiChu() {
		return ghiChu;
	}


	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}


	public String getCv() {
		return cv;
	}


	public void setCv(String cv) {
		this.cv = cv;
	}


	
	public Date getNgaySinh() {
		return ngaySinh;
	}




	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}




	@Override
	public String toString() {
		return "NguoiDung [idUser=" + idUser + ", userName=" + userName + ", password=" + password + ", hoTen=" + hoTen
				+ ", email=" + email + ", sdt=" + sdt + ", phanQuyen=" + phanQuyen + ", viTriUngTuyen=" + viTriUngTuyen
				+ ", anh=" + anh + ", skype=" + skype + ", facebook=" + facebook + ", queQuan=" + queQuan + ", hocVan="
				+ hocVan + ", truong=" + truong + ", khoa=" + khoa + ", namTotNghiep=" + namTotNghiep + ", kyNang="
				+ kyNang + ", kinhNghiemCongTac=" + kinhNghiemCongTac + ", ghiChu=" + ghiChu + ", cv=" + cv
				+ ", ngaySinh=" + ngaySinh + "]";
	}




	
	
	
	
}
