<%@ page import="cliente.ContactoCliente" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'create']"/>
<body>
    <g:render template="/entidad/createTemplate" />
    <g:render template="/cliente/templates/buscarClientes" />
</body>
</html>