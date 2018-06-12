<%@ page import="cliente.Cliente" %>
<!doctype html>
<html>
	<g:render template="/entidad/headTemplate" model="[view:'list']"/>
<body>
    <div id="contenedorPrincipal">
        <g:render template="/entidad/filtroTemplate" model="[entityChild:['nombre','telefono','fax','email','web']]"/>
        <g:render template="/entidad/listTemplate" model="[entityChild:['nombre','telefono','fax','email','web']]"/>
    </div>
</body>
</html>
