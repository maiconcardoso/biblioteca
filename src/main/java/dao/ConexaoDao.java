package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoDao {
	Connection con = null;
	
	public Connection conexaoBD() {
		
		try {
			String url = "jdbc:mysql://127.0.0.1:3306/dbagenda?useTimezone=true&serverTimezone=UTC";
			con = DriverManager.getConnection(url);
		} catch(Exception e) {
			System.err.println(e.getMessage());
		}
		return null;
	}

}
