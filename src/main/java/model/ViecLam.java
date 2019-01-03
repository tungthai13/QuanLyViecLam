package model;

public class ViecLam {

	private int idViecLam;
	private String thumbnail;
	private String tieuDe;
	private int idCongTy;
	private String diaChi;
	private String mucLuong;
	private String moTa;
	CongTy congTy;
	
	
	public ViecLam() {
		
	}


	


	





	public ViecLam(int idViecLam, String thumbnail, String tieuDe, int idCongTy, String diaChi, String mucLuong,
			String moTa, CongTy congTy) {
		super();
		this.idViecLam = idViecLam;
		this.thumbnail = thumbnail;
		this.tieuDe = tieuDe;
		this.idCongTy = idCongTy;
		this.diaChi = diaChi;
		this.mucLuong = mucLuong;
		this.moTa = moTa;
		this.congTy = congTy;
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


	


	public int getIdCongTy() {
		return idCongTy;
	}


	public void setIdCongTy(int idCongTy) {
		this.idCongTy = idCongTy;
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

	


	public CongTy getCongTy() {
		return congTy;
	}



	public void setCongTy(CongTy congTy) {
		this.congTy = congTy;
	}











	@Override
	public String toString() {
		return "ViecLam [idViecLam=" + idViecLam + ", thumbnail=" + thumbnail + ", tieuDe=" + tieuDe + ", idCongTy="
				+ idCongTy + ", diaChi=" + diaChi + ", mucLuong=" + mucLuong + ", moTa=" + moTa + ", congTy=" + congTy
				+ "]";
	}




	

	


	
	

	
	
	
}
