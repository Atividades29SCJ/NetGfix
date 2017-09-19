package br.com.netgfix.business;

import java.util.List;
import br.com.netgfix.dao.CatalogoDao;
import br.com.netgfix.entity.Favorito;
import br.com.netgfix.entity.Gif;

public class CatalogoBusiness {
	
	public List<Gif> obterGifs(){
		CatalogoDao catalogoDao = new CatalogoDao();
		return catalogoDao.buscarGifs();		
	}

	public String gravarFavorito(Favorito favorito) {
		CatalogoDao catalogoDao = new CatalogoDao();
		return catalogoDao.gravarFavorito(favorito);
		
	}
}
