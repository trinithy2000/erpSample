<%@ page import="pedido.ProductosPedidoHistorico" %>
<!doctype html>
<html>
	<g:render template="/entidad/headTemplate" model="[view:'list']"/>
	<body>
<div id="contenedorPrincipal">
	<g:render template="/entidad/filtroTemplate" model="[entityChild:['cantidadAnyo','unidadesAnyo']]"/>
	<g:render template="/entidad/listTemplate"  model="[entityChild:['cantidadAnyo','unidadesAnyo','producto']]"/>
</div>
</body>
</html>
