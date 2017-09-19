package br.com.netgfix.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.netgfix.entity.Favorito;
import br.com.netgfix.entity.Gif;

public class CatalogoDao {

	private EntityManager em;

	public CatalogoDao() {
		this.em = FactoryEm.obterEm();
	}

	public List<Gif> buscarGifs() {
		TypedQuery<Gif> query = em.createQuery("select g from Gif g where ativo = :ativo", Gif.class);
		query.setParameter("ativo", 1);
		return query.getResultList();
	}

	public String gravarFavorito(Favorito favorito) {

		try {
			em.getTransaction().begin();
			em.persist(favorito);
			em.getTransaction().commit();
			return "Inclusao realizada com sucesso";
		} catch (Exception e) {
			return e.getMessage();
		}
	}

}
