package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.LivroDto;

public class LivroDao {
	
	private Connection connection;
	private ConexaoDao conexaoDao;
	private PreparedStatement pst;
	
	// Injeção de Dependência
	public LivroDao(ConexaoDao conexaoDao) {
		this.conexaoDao = conexaoDao;
	}
	
	
	public void create(LivroDto novoLivro) throws SQLException, ClassNotFoundException{
		String createSQL = "INSERT INTO livro (name) VALUES (?)";
		try {
			connection = conexaoDao.connection();
			pst = connection.prepareStatement(createSQL);
			pst.setString(1, novoLivro.getName());
			pst.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			pst.close();
		}
	}
}
