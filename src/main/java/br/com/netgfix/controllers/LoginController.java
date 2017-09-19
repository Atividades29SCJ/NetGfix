package br.com.netgfix.controllers;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.netgfix.business.UsuarioBusiness;
import br.com.netgfix.entity.Usuario;

@Controller
public class LoginController {

	
	private UsuarioBusiness usuarioBusiness = new UsuarioBusiness();

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String catalogo(Locale locale, Model model) {

		return "login";
	}

	@RequestMapping(value = "efetuaLogin", method = RequestMethod.POST)
	public String efetuarLogin(String email, String senha, HttpSession session) {
		List<Usuario> consultaUsuario = usuarioBusiness.buscarUsuario(email, senha);
		if(!consultaUsuario.isEmpty()){
			
			session.setAttribute("user", consultaUsuario.get(0));
			return "redirect:catalogo";
		
		}
		
		return "cadusuario";

	}
}
