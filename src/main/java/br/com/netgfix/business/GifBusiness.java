package br.com.netgfix.business;

import javax.persistence.EntityManager;

import br.com.netgfix.dao.FactoryEm;
import br.com.netgfix.dao.GifDAO;
import br.com.netgfix.entity.Gif;

public class GifBusiness {

	public void adicionarGif(Gif gif) {

		try {
			EntityManager em = FactoryEm.obterEm();
			GifDAO dao = new GifDAO(em);
			dao.adicionarGif(gif);

			System.out.println("Gif inserido com sucesso!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
