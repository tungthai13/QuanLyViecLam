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
	
		
		System.out.println(new LoginDAO().validate("ntlong0410", "123456"));
		
		
		
		
	}

	 
}
