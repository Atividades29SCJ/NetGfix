site.directive("cabecalho", function() {
	return {
		restrict : 'E',
		templateUrl : "resources/html/cabecalho.html",
		replace : true,
		transclude : true
	};
});

site.directive("conteudo", function() {
	return {
		restrict : 'E',
		templateUrl : "resources/html/conteudo.html",
		replace : true,
		transclude : true
	};
});

site.directive("rodape", function() {
	return {
		restrict : 'E',
		templateUrl : "resources/html/rodape.html",
		replace : true,
		transclude : true
	};
});

site.directive("cardgif", function() {
	return {
		restrict : 'E',
		templateUrl : "resources/html/cardgif.html",
		replace : true,
		transclude : true
	};
});