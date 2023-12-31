package dto;

import java.io.Serializable;

public class LivroDto implements Serializable{

	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	
	public LivroDto(int id, String name) {
		this.id = id;
		this.name = name;
	}
	public LivroDto() {};
	
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getId() {
		return this.id;
	}
	
	public String getName() {
		return this.name;
	}

}
