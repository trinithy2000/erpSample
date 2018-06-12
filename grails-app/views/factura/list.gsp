<%@ page import="factura.Factura" %>
<!doctype html>
<html>
<g:render template="/entidad/headTemplate" model="[view: 'list']"/>
<body>
<div id="contenedorPrincipal">
    <g:render template="/entidad/filtroTemplate" model="[entityChild:['referencia','fechaFactura']]"/>
    <g:render template="/entidad/listTemplate" model="[entityChild: ['referencia', 'fechaFactura'],entityGenre:'fem']"/>
</div>
</body>
</html>
