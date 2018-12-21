package model;

public class UngTuyen {

	private int idViecLam;
	private int idHoSo;
	private String trangThai;
	
	public UngTuyen() {

	}

	public UngTuyen(int idViecLam, int idHoSo, String trangThai) {
		this.idViecLam = idViecLam;
		this.idHoSo = idHoSo;
		this.trangThai = trangThai;
	}

	public int getIdViecLam() {
		return idViecLam;
	}

	public void setIdViecLam(int idViecLam) {
		this.idViecLam = idViecLam;
	}

	public int getIdHoSo() {
		return idHoSo;
	}

	public void setIdHoSo(int idHoSo) {
		this.idHoSo = idHoSo;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	@Override
	public String toString() {
		return "UngTuyen [idViecLam=" + idViecLam + ", idHoSo=" + idHoSo + ", trangThai=" + trangThai + "]";
	}
	
	
	
}
