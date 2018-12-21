package utility;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;

public class DBConnection {

	 public static String ip, port, sql, user, pass;
	    public static Connection getConnection() throws SQLException {
	        try {
	            Connection conn = null;
	            Class.forName("com.mysql.jdbc.Driver").newInstance();

	            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/job","root", "");
	         
	            if(conn!= null){
	                System.out.println();
	            }
	            return conn;
	        } catch (ClassNotFoundException ex) {
	            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
	        } catch (InstantiationException ex) {
	            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
	        } catch (IllegalAccessException ex) {
	            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return null;
	    }
	    
	    public static void main(String[] args) throws SQLException {
	        System.out.println(getConnection());
	    }
}
