package br.com.netgfix.entity;

import lombok.Getter;
import lombok.Setter;

public class Gif {
	
	private @Getter int id;
	private @Getter @Setter String autor;
	private @Getter @Setter String descricao;
	private @Getter @Setter String genero;
	private @Getter @Setter String categoria;
	private @Getter String address;
}
