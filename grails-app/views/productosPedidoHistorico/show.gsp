<%@ page import="pedido.ProductosPedidoHistorico" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'show']"/>
<body><g:render template="/entidad/showTemplate"
                model="[entityChild:['cantidadAnyo','unidadesAnyo','producto']]"/>
</body>
</html>