<%@ page import="pedido.PedidoHistorico" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.anyo">
        <g:message code="pedidoHistorico.anyo.label" default="Cliente"/>:</label></div>
    <div class="value left">
        <g:textField name="filtro.anyo" maxlength="4" size="4" value="${params?.filtro?.anyo}"/>
    </div>

    <div class="name left"><label for="filtro.ultimaCompra">
        <g:message code="pedidoHistorico.ultimaCompra.label" default="Fecha de ultima compra"/>:</label></div>
    <div class="value left">
        <g:datePicker name="filtro.ultimaCompra" precision="day" value="${params?.filtro?.ultimaCompra}" default="none" noSelection="['': '']"  />
    </div>

</div>
