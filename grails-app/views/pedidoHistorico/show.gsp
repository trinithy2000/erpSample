<%@ page import="pedido.PedidoHistorico" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'show']"/>
<body><g:render template="/entidad/showTemplate"  model="[ownerEntityName: 'cliente', entityChild: ['anyo','ultimaCompra']]"/></body>
</html>
