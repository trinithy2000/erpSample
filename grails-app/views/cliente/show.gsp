<%@ page import="cliente.Cliente" %>
<!doctype html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'show']"/>
<body><g:render template="/entidad/showTemplate" model="[entityChild:['nombre','telefono','fax','email','web']]"/></body>
</html>
