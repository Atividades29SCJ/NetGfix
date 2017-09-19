package br.com.netgfix.services;

import java.util.HashMap;
import java.util.Map;

import br.com.netgfix.entity.Gif;

public class GifService {

	public GifService() {		
	}
	
	public Map<String,Gif> obterCategoria(){
		
		Map<String,Gif> gifs = new HashMap<String, Gif>();
		
		Gif g1 = new Gif();
		Gif g2 = new Gif();
		Gif g3 = new Gif();
		Gif g4 = new Gif();
		
		g1.setAutor("Francisco");
		g1.setDescricao("Cachorro dirigindo carro");
		g1.setCategoria("Pet");		
		g1.setGenero("comedia");
		g1.setAddress("https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/tulip.jpg");
		
		g4.setAutor("Francisco");
		g4.setDescricao("Cachorro comilão!!!");
		g4.setCategoria("Pet");		
		g4.setGenero("comedia");
		g4.setAddress("https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/tulip.jpg");
		
		
		g2.setAutor("Mario");
		g2.setDescricao("Queda Neymar fazendo embaixadinha");
		g2.setCategoria("Esporte");		
		g2.setGenero("comedia");
		g2.setAddress("https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/tulip.jpg");
		
		
		g3.setAutor("Francisco");
		g3.setDescricao("Dominio de bola Ronaldinho gaucho");
		g3.setCategoria("Esporte");		
		g3.setGenero("comedia");
		g3.setAddress("https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/tulip.jpg");		
		
		
		gifs.put("Pet", g1);
		gifs.put("Pet", g2);
		gifs.put("Esporte", g3);
		gifs.put("Esporte", g4);
		
		return gifs;
	}

}
