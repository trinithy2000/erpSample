<%@ page import="cliente.ContactoCliente" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'edit']"/>
<body>
    <g:render template="/entidad/editTemplate" />
    <g:render template="/cliente/templates/buscarClientes" />
</body>
</html>