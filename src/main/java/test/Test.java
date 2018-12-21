package test;

import java.util.List;

import dao.TinTucDAO;
import dao.ViecLamDAO;
import model.TinTuc;
import model.ViecLam;

public class Test {
	
	public static void main(String[] args) {
		List<ViecLam> list = new ViecLamDAO().tatCaViecLam();
		List<TinTuc> list1 = new TinTucDAO().tatCaTinTuc();
		System.out.println(list);
	
	}

	 
}
