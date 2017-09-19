package br.com.netgfix.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.netgfix.business.CatalogoBusiness;
import br.com.netgfix.entity.Favorito;
import br.com.netgfix.entity.Gif;
import br.com.netgfix.entity.Usuario;

@Controller
@RequestMapping(value = "/favoritos")
public class FavoritoController {

	@RequestMapping(value = "/favoritos", method = RequestMethod.GET)
	public String Favorito(Gif gif, Model model) {	
		
		CatalogoBusiness catalogo = new CatalogoBusiness();
		List<Gif> gifs = catalogo.obterGifs();
		model.addAttribute("favoritos",gifs);	
		model.addAttribute("mensagens","Gif incluído com sucesso");
				
		return "favoritos";
	}
	@RequestMapping(value = "/addFavorite", method = RequestMethod.POST)
	public String FavoritoAdd(Gif gif, Model model) {	
		
		CatalogoBusiness catalogo = new CatalogoBusiness();
		Favorito favorito = new Favorito();
		favorito.setGif(gif);
		catalogo.gravarFavorito(favorito);
		model.addAttribute("favoritos",favorito);	
		model.addAttribute("mensagens","Favorito incluído com sucesso");
				
		return "redirect:sucessoCadFavorito";
	}
	
	@RequestMapping("sucessoCadFavorito")
	public String sucessoCadFavorito() {
		return "sucessoCadFavorito";
	}
}
