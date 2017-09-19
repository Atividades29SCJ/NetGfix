package br.com.netgfix.dao;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.netgfix.entity.Usuario;

public class UsuarioDAO {

	private EntityManager em;

	public UsuarioDAO(EntityManager em) {
		this.em = em;
	}

	public String adicionarUsuario(Usuario usuario) {
		try {
			em.getTransaction().begin();
			em.persist(usuario);
			em.getTransaction().commit();
			return "Inclusao realizada";
		} catch (Exception e) {
			em.getTransaction().rollback();
			return e.getMessage();
		}
	}

	public String alterarUsuario(Usuario usuario) {
		try {
			em.getTransaction().begin();
			em.merge(usuario);
			em.getTransaction().commit();
			return "Alteração realizada";
		} catch (Exception e) {
			em.getTransaction().rollback();
			return e.getMessage();
		}

	}

	public List<Usuario> findUserByEmail(String email, String senha) {
		List<Usuario> usuarios = em
				.createQuery("select u from Usuario u where u.email = :email and u.senha = :senha", Usuario.class)
				.setParameter("email", email).setParameter("senha", senha).getResultList();

		return usuarios;
	}

}
