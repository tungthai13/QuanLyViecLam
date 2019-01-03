package model;

public class Admin {

	private int idAdmin;
	private String userName;
	private String password;
	private String quyen;
	
	
	public Admin() {
		super();
	}


	public Admin(int idAdmin, String userName, String password, String quyen) {
		super();
		this.idAdmin = idAdmin;
		this.userName = userName;
		this.password = password;
		this.quyen = quyen;
	}


	public int getIdAdmin() {
		return idAdmin;
	}


	public void setIdAdmin(int idAdmin) {
		this.idAdmin = idAdmin;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getQuyen() {
		return quyen;
	}


	public void setQuyen(String quyen) {
		this.quyen = quyen;
	}


	@Override
	public String toString() {
		return "Admin [idAdmin=" + idAdmin + ", userName=" + userName + ", password=" + password + ", quyen=" + quyen
				+ "]";
	}
	
	
	
	
}
