package try_admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ToConnect {

	Connection con;
	public ToConnect()
	{
		try {
		 Class.forName("oracle.jdbc.driver.OracleDriver");
		 con=DriverManager.getConnection
					("jdbc:oracle:thin:@localhost:1521:xe","hr","admin");
		 System.out.println("connected");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public Connection getConnection()
	{
		return con;
	}
}
