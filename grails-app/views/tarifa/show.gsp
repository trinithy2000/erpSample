<%@ page import="factura.Tarifa" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'show']"/>
<body><g:render template="/entidad/showTemplate" model="[ownerEntityName: 'cliente', entityChild: ['tarifa', 'tarifadefecto'], entityGenre:'fem']"/></body>
</html>