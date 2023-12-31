package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDao {
	
	/**
	 * Módulo de Conexão
	*/
	
	// Parâmetros de conexão
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/biblioteca?useTimezone=true&serverTimezone=UTC";
	private String username = "root";
	private String password = "mysql@123";
	
	// Método de conexão
	public Connection connection() throws SQLException, ClassNotFoundException {
		Connection connection = null;
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, username, password);
			System.out.println("Conexão bem-sucedida");
			return connection;
			
		} catch(SQLException e) {
			System.err.println(e.getMessage());
			return null;
		}
	}
}
