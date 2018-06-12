<%@ page import="cliente.DireccionCliente" %>
<!doctype html>
<html>
	<g:render template="/entidad/headTemplate" model="[view:'list']"/>
	<body>
<div id="contenedorPrincipal">
	<g:render template="/entidad/filtroTemplate" model="[entityChild:['tipo','numero','calle']]"/>
	<g:render template="/entidad/listTemplate" model="[entityChild:['tipo','numero','calle','provincia','descripcion'],entityGenre:'fem']"/>
</div>
</body>
</html>


