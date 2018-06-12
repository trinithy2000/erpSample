<%@ page import="pedido.Pedido" %>
<!doctype html>
<html>
	<g:render template="/entidad/headTemplate" model="[view:'list']"/>
<body>
<div id="contenedorPrincipal">
	<g:render template="/entidad/filtroTemplate" model="[ownerEntity: 'cliente', entityChild: ['referencia','fechaoferta','fechavalidez','esPrepedido']]"/>
	<g:render template="/entidad/listTemplate" model="[ownerEntity: 'cliente', entityChild: ['referencia','fechaoferta','fechavalidez','esPrepedido']]"/>
</div>
</body>
</html>
