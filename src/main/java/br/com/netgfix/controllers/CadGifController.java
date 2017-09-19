package br.com.netgfix.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.netgfix.business.GifBusiness;
import br.com.netgfix.entity.Gif;

@Controller
public class CadGifController {

	@RequestMapping("cadastro-gif")
	public String adiciona(Gif gif) {
		return "cadgif";
	}

	@RequestMapping("adicionaGif")
	public String adicionaUsuario(Gif gif) {
		GifBusiness gBusiness = new GifBusiness();
		gif.setAtivo(1);
		gBusiness.adicionarGif(gif);
		
		return "redirect:sucessoCadGif";
	}

	@RequestMapping("sucessoCadGif")
	public String sucessoCadastro(Gif gif) {
		return "sucessoCadGif";
	}
	
	
}
