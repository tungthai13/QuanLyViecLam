package model;

public class CongTy {

	private int idCongTy;
	private String tenCongTy;
	private int namThanhLap;
	private int idAdmin;
	
	
	public CongTy() {

	}


	public CongTy(int idCongTy, String tenCongTy, int namThanhLap, int idAdmin) {

		this.idCongTy = idCongTy;
		this.tenCongTy = tenCongTy;
		this.namThanhLap = namThanhLap;
		this.idAdmin = idAdmin;
	}


	public int getIdCongTy() {
		return idCongTy;
	}


	public void setIdCongTy(int idCongTy) {
		this.idCongTy = idCongTy;
	}


	public String getTenCongTy() {
		return tenCongTy;
	}


	public void setTenCongTy(String tenCongTy) {
		this.tenCongTy = tenCongTy;
	}


	public int getNamThanhLap() {
		return namThanhLap;
	}


	public void setNamThanhLap(int namThanhLap) {
		this.namThanhLap = namThanhLap;
	}


	public int getIdAdmin() {
		return idAdmin;
	}


	public void setIdAdmin(int idAdmin) {
		this.idAdmin = idAdmin;
	}


	@Override
	public String toString() {
		return "CongTy [idCongTy=" + idCongTy + ", tenCongTy=" + tenCongTy + ", namThanhLap=" + namThanhLap
				+ ", idAdmin=" + idAdmin + "]";
	}
	
	
	
}
