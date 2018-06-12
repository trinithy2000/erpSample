<%@ page import="cliente.BancoCliente" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'show']"/>
<body>
    <g:render template="/entidad/showTemplate"
              model="[ownerEntityName: 'cliente', entityChild: ['banknombre','bankiban','bankent','bankcont','bankcuenta'],entityGenre:'fem']"/>
</body>
</html>
