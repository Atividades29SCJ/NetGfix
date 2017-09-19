package br.com.netgfix.business;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.netgfix.dao.FactoryEm;
import br.com.netgfix.dao.UsuarioDAO;
import br.com.netgfix.entity.Usuario;

public class UsuarioBusiness {

	
	public List<Usuario> buscarUsuario(String email, String senha){
		EntityManager em = FactoryEm.obterEm();
		UsuarioDAO usuarioDao = new UsuarioDAO(em);
		List<Usuario> usuarios = usuarioDao.findUserByEmail(email, senha);
		
		return usuarios;
	}
	

	public void adicionarUsuario(Usuario usuario) {

		try {
			EntityManager em = FactoryEm.obterEm();
			UsuarioDAO usuarioDao = new UsuarioDAO(em);
			usuarioDao.adicionarUsuario(usuario);

			System.out.println("Cliente incluído com sucesso!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void removeUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		
	}

	public void alterarUsuario(Usuario usuario) {
		try {
			EntityManager em = FactoryEm.obterEm();
			UsuarioDAO usuarioDao = new UsuarioDAO(em);
			usuarioDao.alterarUsuario(usuario);

			System.out.println("Cliente alterado com sucesso!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
