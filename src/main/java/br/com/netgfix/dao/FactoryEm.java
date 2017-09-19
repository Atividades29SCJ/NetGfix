package br.com.netgfix.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FactoryEm {

	private static EntityManager em;

	public static EntityManager obterEm() {

		if (em == null) {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("FIAP");
			em = emf.createEntityManager();
		}
		return em;

	}

}
