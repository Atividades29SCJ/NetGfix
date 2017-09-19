package br.com.netgfix.entity;

import java.io.Serializable;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity 
@Table(name="Gif", schema="root")
public class Gif implements Serializable {

	private static final long serialVersionUID = -6096873522791263574L;
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO) 
	private int id;
	
	@Column(name="AUTOR", nullable=false) 
	private String autor;
	
	@Column(name="DESCRICAO", nullable=false) 
	private String descricao;
	
	@Column(name="GENERO", nullable=false) 
	private  String genero;
	
	@Column(name="CATEGORIA", nullable=false) 
	private  String categoria;
		
	@Column(name="ADDRESS", nullable=false) 
	private  String address;
	
	@Column(name="CLASSETARIA", nullable=false) 
	private  int classificacaoetaria;
	
	@Column(name="ATIVO", nullable=false) 
	private int ativo;
	
	@OneToMany(cascade = CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="gif")	
	private Set<Favorito> favoritos = new LinkedHashSet<Favorito>();	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getClassificacaoetaria() {
		return classificacaoetaria;
	}

	public void setClassificacaoetaria(int classificacaoetaria) {
		this.classificacaoetaria = classificacaoetaria;
	}

	public int getAtivo() {
		return ativo;
	}

	public void setAtivo(int ativo) {
		this.ativo = ativo;
	}

	public Set<Favorito> getFavoritos() {
		return favoritos;
	}

	public void setFavoritos(Set<Favorito> favoritos) {
		this.favoritos = favoritos;
	}
}
