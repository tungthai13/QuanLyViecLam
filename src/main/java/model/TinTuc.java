package model;

import java.sql.Date;

public class TinTuc {

	private int idTinTuc;
	private String thumbnail;
	private String tieuDe;
	private String nguoiPost;	
	private Date ngayPost;
	private String noiDungVanTat;
	private String noiDungChinh;
	
	public TinTuc() {

	}

	public TinTuc(int idTinTuc, String thumbnail, String tieuDe, String nguoiPost, Date ngayPost, String noiDungVanTat,
			String noiDungChinh) {
		this.idTinTuc = idTinTuc;
		this.thumbnail = thumbnail;
		this.tieuDe = tieuDe;
		this.nguoiPost = nguoiPost;
		this.ngayPost = ngayPost;
		this.noiDungVanTat = noiDungVanTat;
		this.noiDungChinh = noiDungChinh;
	}

	public int getIdTinTuc() {
		return idTinTuc;
	}

	public void setIdTinTuc(int idTinTuc) {
		this.idTinTuc = idTinTuc;
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

	public String getNguoiPost() {
		return nguoiPost;
	}

	public void setNguoiPost(String nguoiPost) {
		this.nguoiPost = nguoiPost;
	}

	public Date getNgayPost() {
		return ngayPost;
	}

	public void setNgayPost(Date ngayPost) {
		this.ngayPost = ngayPost;
	}

	public String getNoiDungVanTat() {
		return noiDungVanTat;
	}

	public void setNoiDungVanTat(String noiDungVanTat) {
		this.noiDungVanTat = noiDungVanTat;
	}

	public String getNoiDungChinh() {
		return noiDungChinh;
	}

	public void setNoiDungChinh(String noiDungChinh) {
		this.noiDungChinh = noiDungChinh;
	}

	@Override
	public String toString() {
		return "TinTuc [idTinTuc=" + idTinTuc + ", thumbnail=" + thumbnail + ", tieuDe=" + tieuDe + ", nguoiPost="
				+ nguoiPost + ", ngayPost=" + ngayPost + ", noiDungVanTat=" + noiDungVanTat + ", noiDungChinh="
				+ noiDungChinh + "]";
	}
	
	
	
}
