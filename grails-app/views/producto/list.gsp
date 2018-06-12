<%@ page import="producto.Producto" %>
<!doctype html>
<html>
	<g:render template="/entidad/headTemplate" model="[view:'list']"/>
	<body>
<div id="contenedorPrincipal">
	<g:render template="/entidad/filtroTemplate" model="[entityChild:['nombre','codigo']]"/>
	<g:render template="/entidad/listTemplate" model="[entityChild:['nombre','codigo','precioventa','descripcion']]"/>
</div>
</body>
</html>


