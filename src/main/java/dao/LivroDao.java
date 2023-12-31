package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.LivroDto;

public class LivroDao {
	
	private Connection connection;
	private PreparedStatement pst;
	private ResultSet rs;
	List<LivroDto> lista = new ArrayList<>();
	
	public LivroDao() {};
	
	
	
	public void create(LivroDto novoLivro) throws SQLException, ClassNotFoundException{
		String createSQL = "INSERT INTO livro (nome) VALUES (?)";
		try {
			connection = new ConexaoDao().connection();
			pst = connection.prepareStatement(createSQL);
			pst.setString(1, novoLivro.getName());
			pst.executeUpdate();
			pst.close();
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} 
	}
	
	public List<LivroDto> readAll() throws ClassNotFoundException {
		String readSQL = "SELECT * FROM livro";
		try {
			connection = new ConexaoDao().connection();
			pst = connection.prepareStatement(readSQL);
			rs = pst.executeQuery();
			while(rs.next()) {
				LivroDto livroDto = new LivroDto();
				livroDto.setId(rs.getInt("id"));
				livroDto.setName(rs.getString("nome"));
				lista.add(livroDto);
			}
			return lista;
			
		} catch(SQLException e) {
			System.err.println(e.getMessage());	
			return null;
		}
	}
}
