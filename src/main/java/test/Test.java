package test;

import java.util.List;

import dao.ViecLamDAO;
import model.ViecLam;

public class Test {
	
	public static void main(String[] args) {
		List<ViecLam> list = new ViecLamDAO().tatCaViecLam();
		List<ViecLam> list1 = new ViecLamDAO().tatCaViecLam1();
		System.out.println(list);
	
	}

	 
}
