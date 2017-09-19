package br.com.netgfix.dao;

import javax.persistence.EntityManager;

import br.com.netgfix.entity.Gif;

public class GifDAO {
	
	private EntityManager em;

	public GifDAO(EntityManager em){ 
		this.em = em;
	}

	public String adicionarGif(Gif gif) {
		try {
			em.getTransaction().begin(); 
			em.persist(gif); 
			em.getTransaction().commit();
			return "Gif inserido com sucesso";
		} catch (Exception e) {
			return e.getMessage();
		}
	}

}
