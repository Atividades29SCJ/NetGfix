<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<link rel="stylesheet" href="netgfixweb/resources/css/style.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.js"></script>

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<title>Cadastro Usuários</title>
<body>
	<jsp:include page="/WEB-INF/include/nav-bar.jsp"></jsp:include>

	<div class="container">
		<c:url var="url"
			value="${empty usuario.id ? '/adicionaUsuario' : '/alterarUsuario'}" />

		<div class="panel panel-default">
			<div class="panel-heading">
				<c:if test="${empty usuario.id}">
					<h3 class="panel-title text-center">CADASTRO DE USUÁRIO</h3>
				</c:if>
				<c:if test="${not empty usuario.id}">
					<h3 class="panel-title text-center">ALTERAÇÃO DE USUÁRIO -
						${usuario.id}</h3>
				</c:if>
			</div>
			<div class="panel-body">

				<form action="${url}" method="post" class="form-horizontal">
					<input type="hidden" name="id" value="${usuario.id}" />

					<fieldset>
						<legend>Dados Pessoais</legend>
						<div class="form-group">
							<label for="nome" class="col-sm-2 control-label">Nome</label>
							<div class="col-sm-4">
								<input type="text" class="form-control data" name="nome"
									value="${usuario.nome}">
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-4">
								<input type="email" class="form-control data" name="email"
									value="${usuario.email}">
							</div>
						</div>
						<div class="form-group">
							<label for="nome" class="col-sm-2 control-label">Senha</label>
							<div class="col-sm-2">
								<input type="password" class="form-control data" name="senha"
									value="${usuario.senha}">
							</div>
						</div>

						<div class="form-group">
							<label for="nome" class="col-sm-2 control-label">Data de
								Nascimento:</label>
							<div class="col-sm-2">
								<input type="text" class="form-control data"
									placeholder="dd/mm/aaaa" name="dataNascimento"
									value="<fmt:formatDate value="${tarefa.dataNascimento.time}" pattern="dd/MM/yyyy" />" />
							</div>
						</div>

					</fieldset>


					<button type="submit" class="btn btn-primary">
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>
						Salvar
					</button>
				</form>
			</div>
		</div>
	</div>

	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>

<script type="text/javascript" src="./jquery/jquery-1.8.3.min.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="../js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>