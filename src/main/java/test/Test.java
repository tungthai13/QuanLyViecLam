package test;

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
	
		
		ViecLam v = new ViecLam();
		v.setIdViecLam(27);
		v.setThumbnail("abc");
		v.setTieuDe("abc");
		v.setTenCongTy("abc");
		v.setDiaChi("abc");
		v.setMucLuong("10");
		v.setMoTa("abc");
		
		new ViecLamDAO().suaViecLam(v);
		
		
	}

	 
}
