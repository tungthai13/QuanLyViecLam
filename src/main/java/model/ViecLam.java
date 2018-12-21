package model;

public class ViecLam {

	private int idViecLam;
	private String thumbnail;
	private String tieuDe;
	private String tenCongTy;
	private String diaChi;
	private String mucLuong;
	private String moTa;
	
	
	public ViecLam() {
		
	}


	public ViecLam(int idViecLam, String thumbnail, String tieuDe, String tenCongTy, String diaChi, String mucLuong,
			String moTa) {
		this.idViecLam = idViecLam;
		this.thumbnail = thumbnail;
		this.tieuDe = tieuDe;
		this.tenCongTy = tenCongTy;
		this.diaChi = diaChi;
		this.mucLuong = mucLuong;
		this.moTa = moTa;
	}


	public int getIdViecLam() {
		return idViecLam;
	}


	public void setIdViecLam(int idViecLam) {
		this.idViecLam = idViecLam;
	}


	public String getThumbnail() {
		return thumbnail;
	}


	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}


	public String getTieuDe() {
		return tieuDe;
	}


	public void setTieuDe(String tieuDe) {
		this.tieuDe = tieuDe;
	}


	public String getTenCongTy() {
		return tenCongTy;
	}


	public void setTenCongTy(String tenCongTy) {
		this.tenCongTy = tenCongTy;
	}


	public String getDiaChi() {
		return diaChi;
	}


	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}


	public String getMucLuong() {
		return mucLuong;
	}


	public void setMucLuong(String mucLuong) {
		this.mucLuong = mucLuong;
	}


	public String getMoTa() {
		return moTa;
	}


	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}


	@Override
	public String toString() {
		return "ViecLam [idViecLam=" + idViecLam + ", thumbnail=" + thumbnail + ", tieuDe=" + tieuDe + ", tenCongTy="
				+ tenCongTy + ", diaChi=" + diaChi + ", mucLuong=" + mucLuong + ", moTa=" + moTa + "]";
	}
	
	
	
}
