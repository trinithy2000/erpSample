<%@ page import="pedido.ProductosPedido" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'show']"/>
<body><g:render template="/entidad/showTemplate" model="[entityChild:['cantidad','unidades','producto']]" /></body>
</html>