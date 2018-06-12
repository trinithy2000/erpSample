<%@ page import="producto.Producto" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'show']"/>
<body><g:render template="/entidad/showTemplate" model="[entityChild:['nombre','codigo','precioventa','descripcion']]"/></body>
</html>