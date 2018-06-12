<%@ page import="cliente.BancoCliente" %>
<!doctype html>
<html>
<g:render template="/entidad/headTemplate" model="[view: 'list']"/>
<body>
<div id="contenedorPrincipal">
    <g:render template="/entidad/filtroTemplate" model="[ownerEntity: 'cliente', entityChild: ['banknombre','bankiban','bankent']]"/>
    <g:render template="/entidad/listTemplate" model="[ownerEntity: 'cliente', entityChild: ['banknombre','bankiban','bankent'],entityGenre:'fem']"/>
</div>
</body>
</html>
