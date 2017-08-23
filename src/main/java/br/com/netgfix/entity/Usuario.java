package br.com.netgfix.entity;

import java.time.LocalDate;
import java.util.ArrayList;

import lombok.Getter;
import lombok.Setter;

public class Usuario {
	
	private @Getter int id;
	private @Getter String nome;
	private @Getter String email;
	private @Getter @Setter String senha;
	private @Getter @Setter LocalDate datanascimento;
	private @Getter @Setter ArrayList<Gif> favoritos;
}
