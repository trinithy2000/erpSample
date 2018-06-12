<%@ page import="cliente.DireccionCliente" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'show']"/>
<body><g:render template="/entidad/showTemplate" model="[entityChild:['tipo','numero','calle','provincia','descripcion'],entityGenre:'fem']"/></body>
</html>