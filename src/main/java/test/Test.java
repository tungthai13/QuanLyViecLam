package test;

import java.sql.Date;
import java.util.List;

import dao.LoginDAO;
import dao.NguoiDungDAO;
import dao.TinTucDAO;
import dao.ViecLamDAO;
import model.NguoiDung;
import model.TinTuc;
import model.ViecLam;

public class Test {
	
	public static void main(String[] args) {
	
		
		TinTuc t = new TinTuc();
		t.setIdTinTuc(5);
		t.setThumbnail("test");
		t.setTieuDe("test");
		t.setNguoiPost("t123");
		t.setNgayPost(Date.valueOf("2019-01-03"));
		t.setNoiDungVanTat("t123");
		t.setNoiDungChinh("t123");
		new TinTucDAO().suaTinTuc(t);
		
		
	}

	 
}
