package br.com.netgfix.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.netgfix.business.UsuarioBusiness;
import br.com.netgfix.entity.Usuario;

@Controller
public class CadUsuarioController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("dd/MM/yyyy"), false));
	}

	@RequestMapping("cadusuario")
	public String adiciona(Usuario usuario) {
		return "cadusuario";
	}

	@RequestMapping("adicionaUsuario")
	public String adicionaUsuario(Usuario usuario) {
		UsuarioBusiness business = new UsuarioBusiness();
		business.adicionarUsuario(usuario);
		return "redirect:sucessoCadastro";
	}
	
	@RequestMapping("alterarUsuario")
	public String alterarUsuario(Usuario usuario) {
		UsuarioBusiness business = new UsuarioBusiness();
		business.alterarUsuario(usuario);
		return "redirect:sucessoCadastro";
	}

	@RequestMapping("sucessoCadastro")
	public String sucessoCadastro(Usuario usuario) {
		return "sucessoCadastro";
	}

}
