package br.com.netgfix.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import br.com.netgfix.business.CatalogoBusiness;
import br.com.netgfix.entity.Gif;


@Controller
@RequestMapping(value = "/catalogo")
public class CatalogoController {
	
	@RequestMapping(value = "/catalogo", method = RequestMethod.GET)
	public String catalogo(Gif gif, Model model) {	
		
		CatalogoBusiness catalogo = new CatalogoBusiness();
		List<Gif> gifs = catalogo.obterGifs();
		model.addAttribute("catalogo",gifs);
				
		return "catalogo";
	}
	
	@RequestMapping(value = "/catalogo", method = RequestMethod.POST)
	public String favoritos(Gif gif, Model model) {
		
		CatalogoBusiness catalogo = new CatalogoBusiness();
		List<Gif> gifs = catalogo.obterGifs();
		model.addAttribute("favoritos",gifs);	
		
		return "redirect:favoritos";	
	}
}
