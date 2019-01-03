package test;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.Connection;

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
		
		List<CongTy> list = new CongTyDAO().tatCaCongTy();
		System.out.println(list);
		
	}

	 
}
