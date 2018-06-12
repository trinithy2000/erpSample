<%@ page import="pedido.Pedido" %>
<!DOCTYPE html>
<html>
<g:render template="/entidad/headTemplate" model="[view:'show']"/>
<body>
    <g:render template="/entidad/showTemplate"
              model="[ownerEntityName: 'cliente', entityChild: ['referencia','fechaoferta','fechavalidez','esPrepedido','descripcion','productosPedido']]"/>
</body>
</html>

