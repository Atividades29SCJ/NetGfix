<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Catalogo de Gifs</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="netgfixweb/resources/css/style.css">

<link rel="stylesheet" href="netgfixweb/resources/css/flickity.css">
<link rel="stylesheet" href="netgfixweb/resources/css/normalize.min.css">
<link rel="stylesheet" href="netgfixweb/resources/css/animate.min.css">
<script src="netgfixweb/resources/js/flickity.pkgd.js"></script>
<style>
#btn-close-modal {
	width: 100%;
	text-align: center;
	cursor: pointer;
	color: #fff;
}
</style>

</head>

<body>
	<jsp:include page="/WEB-INF/include/nav-bar.jsp"></jsp:include>
	<script src="netgfixweb/resources/js/jquery.min.js"></script>
	<script src="netgfixweb/resources/js/animatedModal.min.js"></script>
	<!--Modal-->
	<form id="form_catalogo" action=<c:url value="/catalogo"/>
		method="post">
		<div id="animatedModal">
			<a class="addFavorite" href="#"
				onClick="document.getElementById('form_catalogo').submit();">Add
				Favorite</a>
			<div id="btn-close-modal" class="close-animatedModal">Fechar</div>
			<div class="modal-content">
				<img id="imgmodal" src="" style='width: 100%; heigth: 100%'
					alt='tulip' /> <input id="identificacaoimg" name="address"
					type="hidden" value="">
			</div>
		</div>
	</form>


	<h4>Esporte</h4>
	<div id="celebridade" class="carousel"
		data-flickity='{ "lazyLoad": 2, "initialIndex": 2 }'>
		<c:forEach items="${catalogo}" var="gif">
			<c:if test="${gif.categoria == 'Esporte'}">
				<div class="carousel-cell">
					<a id="link${gif.id}" href="#animatedModal"><img
						class="carousel-cell-image" onclick="changeIt(this)"
						data-flickity-lazyload="${gif.address}"
						style="width: 100%; heigth: 100%" alt="${gif.descricao}" /></a>
				</div>
			</c:if>
		</c:forEach>
	</div>


	<h4>Pet</h4>
	<div id="celebridade" class="carousel"
		data-flickity='{ "lazyLoad": 2, "initialIndex": 2 }'>
		<c:forEach items="${catalogo}" var="gif">
			<c:if test="${gif.categoria == 'Pet'}">
				<div class="carousel-cell">
					<a id="link${gif.id}" href="#animatedModal"><img
						class="carousel-cell-image" onclick="changeIt(this)"
						data-flickity-lazyload="${gif.address}"
						style="width: 100%; heigth: 100%" alt="${gif.descricao}" /></a>
				</div>
			</c:if>
		</c:forEach>
	</div>

	<h4>Crianças</h4>
	<div id="celebridade" class="carousel"
		data-flickity='{ "lazyLoad": 2, "initialIndex": 2 }'>
		<c:forEach items="${catalogo}" var="gif">
			<c:if test="${gif.categoria == 'Crianca'}">
				<div class="carousel-cell">
					<a id="link${gif.id}" href="#animatedModal"><img
						class="carousel-cell-image" onclick="changeIt(this)"
						data-flickity-lazyload="${gif.address}"
						style="width: 100%; heigth: 100%" alt="${gif.descricao}" /></a>
				</div>
			</c:if>
		</c:forEach>
	</div>

	<h4>Celebridades</h4>
	<div id="celebridade" class="carousel"
		data-flickity='{ "lazyLoad": 2, "initialIndex": 2 }'>
		<c:forEach items="${catalogo}" var="gif">
			<c:if test="${gif.categoria == 'Celebridades'}">
				<div class="carousel-cell">
					<a id="link${gif.id}" href="#animatedModal"><img
						class="carousel-cell-image" onclick="changeIt(this)"
						data-flickity-lazyload="${gif.address}"
						style="width: 100%; heigth: 100%" alt="${gif.descricao}" /></a>
				</div>
			</c:if>
		</c:forEach>
	</div>

	<jsp:include page="footer.jsp" />

	<c:forEach items="${catalogo}" var="gif">
		<c:if test="${gif.categoria == 'Esporte'}">
			<script>$("#link${gif.id}").animatedModal();</script>
		</c:if>
	</c:forEach>
	
	<c:forEach items="${catalogo}" var="gif">
		<c:if test="${gif.categoria == 'Pet'}">
			<script>$("#link${gif.id}").animatedModal();</script>
		</c:if>
	</c:forEach>
	
	<c:forEach items="${catalogo}" var="gif">
		<c:if test="${gif.categoria == 'Crianca'}">
			<script>$("#link${gif.id}").animatedModal();</script>
		</c:if>
	</c:forEach>
	
	<c:forEach items="${catalogo}" var="gif">
		<c:if test="${gif.categoria == 'Celebridades'}">
			<script>$("#link${gif.id}").animatedModal();</script>
		</c:if>
	</c:forEach>
	
	
	<script>
		function changeIt(img) {
			$("#imgmodal").attr("src", img.src);
			$("#identificacaoimg").attr("value", img.src);
		}
	</script>
</body>
</html>