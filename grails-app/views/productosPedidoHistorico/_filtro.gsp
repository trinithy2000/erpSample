<%@ page import="pedido.ProductosPedidoHistorico" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.cantidadAnyo">
        <g:message code="productosPedidoHistorico.cantidadAnyo.label" default="Cantidad año"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.cantidadAnyo" maxlength="10" size="10" value="${params?.filtro?.cantidadAnyo}"/>
    </div>

    <div class="name left"><label for="filtro.unidadesAnyo">
        <g:message code="productosPedidoHistorico.unidadesAnyo.label" default="Unidades año"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.unidadesAnyo" maxlength="10" size="10" value="${params?.filtro?.unidadesAnyo}"/>
    </div>

</div>



