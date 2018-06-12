<%@ page import="pedido.PedidoHistorico" %>
<!doctype html>
<html>
	<g:render template="/entidad/headTemplate" model="[view:'list']"/>
	<body>
<div id="contenedorPrincipal">
	<g:render template="/entidad/filtroTemplate" model="[ownerEntity: 'cliente',entityChild:['anyo','ultimaCompra']]"/>
	<g:render template="/entidad/listTemplate" model="[ownerEntity: 'cliente', entityChild: ['anyo','ultimaCompra']]" />
</div>
</body>
</html>