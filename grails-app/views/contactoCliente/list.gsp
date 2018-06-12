<%@ page import="cliente.ContactoCliente" %>
<!doctype html>
<html>
	<g:render template="/entidad/headTemplate" model="[view:'list']"/>
	<body>
<div id="contenedorPrincipal">
	<g:render template="/entidad/filtroTemplate" model="[entityChild:['nombre','apellidos']]"/>
	<g:render template="/entidad/listTemplate" model="[entityChild:['nombre','apellidos','telefono','email']]"/>
</div>
</body>
</html>
