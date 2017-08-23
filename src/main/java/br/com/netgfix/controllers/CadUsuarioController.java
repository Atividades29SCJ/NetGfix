package br.com.netgfix.controllers;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/cadusuario")
public class CadUsuarioController {
	
	@RequestMapping(value = "/cadusuario", method = RequestMethod.GET)
	public String catalogo(Locale locale, Model model) {
		
		return "cadusuario";
	}

}
