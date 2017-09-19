package br.com.netgfix.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "FAVORITO")
public class Favorito implements Serializable {

	private static final long serialVersionUID = -6233427414164424018L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "IDFAVORITO")
	private int idfavorito;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "IDGIF")
	private Gif gif;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "IDUSUARIO")
	private Usuario usuarios;
	
	public int getIdfavorito() {
		return idfavorito;
	}

	public void setIdfavorito(int idfavorito) {
		this.idfavorito = idfavorito;
	}

	public Gif getGif() {
		return gif;
	}

	public void setGif(Gif gif) {
		this.gif = gif;
	}

	public Usuario getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(Usuario usuarios) {
		this.usuarios = usuarios;
	}

}
