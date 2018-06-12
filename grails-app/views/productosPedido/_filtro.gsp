<%@ page import="pedido.ProductosPedido" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.cantidad">
        <g:message code="productosPedido.cantidad.label" default="Cantidad"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.cantidad" maxlength="10" size="10" value="${params?.filtro?.cantidad}"/>
    </div>

    <div class="name left"><label for="filtro.unidades">
        <g:message code="productosPedido.unidades.label" default="Unidades"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.unidades" maxlength="10" size="10" value="${params?.filtro?.unidades}"/>
    </div>

</div>

