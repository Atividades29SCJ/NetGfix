package br.com.netgfix.controllers;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/catalogo")
public class CatalogoController {
	
	@RequestMapping(value = "/catalogo", method = RequestMethod.GET)
	public String catalogo(Locale locale, Model model) {
		
		return "catalogo";
	}

}
