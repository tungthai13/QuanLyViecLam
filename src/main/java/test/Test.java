package test;

import java.util.List;

import dao.TinTucDAO;
import dao.ViecLamDAO;
import model.TinTuc;
import model.ViecLam;

public class Test {
	
	public static void main(String[] args) {
	
		
		ViecLam v = new ViecLam();
		v.setThumbnail("abc");
		v.setTieuDe("abc");
		v.setTenCongTy("abc");
		v.setDiaChi("abc");
		
		v.setThumbnail("abc");
		new ViecLamDAO().themViecLam(v);
		
	}

	 
}
