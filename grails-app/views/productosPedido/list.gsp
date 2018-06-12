<%@ page import="pedido.ProductosPedido" %>
<!doctype html>
<html>
	<g:render template="/entidad/headTemplate" model="[view:'list']"/>
	<body>
<div id="contenedorPrincipal">
	<g:render template="/entidad/filtroTemplate" model="[entityChild:['cantidad','unidades']]"/>
	<g:render template="/entidad/listTemplate" model="[entityChild:['cantidad','unidades','producto']]"/>
</div>
</body>
</html>