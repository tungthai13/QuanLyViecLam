package model;

import java.sql.Date;

public class HoSo {

	private int idHoSo;
	private String hoTen;
	private Date ngaySinh;
	private String email;
	private int sdt;
	private String cv;
	private String noiDungUngTuyen;
	private int idUser;
	private int idViecLam;
	ViecLam viecLam;
	UngTuyen ungTuyen;
	
	public HoSo() {
		
	}

	public HoSo(int idHoSo, String hoTen, Date ngaySinh, String email, int sdt, String cv,
			String noiDungUngTuyen, int idUser, int idViecLam) {
		this.idHoSo = idHoSo;
		this.hoTen = hoTen;
		this.ngaySinh = ngaySinh;
		this.email = email;
		this.sdt = sdt;
		this.cv = cv;
		this.noiDungUngTuyen = noiDungUngTuyen;
		this.idUser = idUser;
		this.idViecLam = idViecLam;
	}

	public int getIdHoSo() {
		return idHoSo;
	}

	public void setIdHoSo(int idHoSo) {
		this.idHoSo = idHoSo;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
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

	public String getCv() {
		return cv;
	}

	public void setCv(String cv) {
		this.cv = cv;
	}

	public String getNoiDungUngTuyen() {
		return noiDungUngTuyen;
	}

	public void setNoiDungUngTuyen(String noiDungUngTuyen) {
		this.noiDungUngTuyen = noiDungUngTuyen;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public int getIdViecLam() {
		return idViecLam;
	}

	public void setIdViecLam(int idViecLam) {
		this.idViecLam = idViecLam;
	}

	
	public ViecLam getViecLam() {
		return viecLam;
	}

	public void setViecLam(ViecLam viecLam) {
		this.viecLam = viecLam;
	}

	public UngTuyen getUngTuyen() {
		return ungTuyen;
	}

	public void setUngTuyen(UngTuyen ungTuyen) {
		this.ungTuyen = ungTuyen;
	}

	@Override
	public String toString() {
		return "HoSo [idHoSo=" + idHoSo + ", hoTen=" + hoTen + ", ngaySinh=" + ngaySinh + ", email=" + email + ", sdt="
				+ sdt + ", cv=" + cv + ", noiDungUngTuyen=" + noiDungUngTuyen + ", idUser=" + idUser + ", idViecLam="
				+ idViecLam + ", viecLam=" + viecLam + ", ungTuyen=" + ungTuyen + "]";
	}

	
	
	
	
}
