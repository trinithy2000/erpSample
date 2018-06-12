<%@ page import="cliente.ContactoCliente" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'show']"/>
<body><g:render template="/entidad/showTemplate" model="[entityChild:['nombre','apellidos','telefono','email']]"/></body>
</html>