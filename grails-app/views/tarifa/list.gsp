<%@ page import="factura.Tarifa" %>
<!doctype html>
<html>
<g:render template="/entidad/headTemplate" model="[view: 'list']"/>
<body>
<div id="contenedorPrincipal">
    <g:render template="/entidad/filtroTemplate" model="[ownerEntity: 'cliente', entityChild:['tarifa', 'tarifadefecto']]"/>
    <g:render template="/entidad/listTemplate" model="[ownerEntity: 'cliente', entityChild: ['tarifa', 'tarifadefecto'],entityGenre:'fem']"/>
</div>
</body>
</html>
