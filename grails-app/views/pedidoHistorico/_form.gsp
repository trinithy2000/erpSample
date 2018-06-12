<%@ page import="pedido.PedidoHistorico" %>

<div class="prop seccion">
    <div class="name left"><label for="cliente">
        <g:message code="cliente.label" default="Cliente"/>:</label></div>
    <div class="value left ${hasErrors(bean: instance.cliente, field: 'cliente', 'error')} required">
        <g:textField id="nombreCliente" name="cliente" maxlength="150" size="60" value="${instance?.cliente?.nombre}"/>
        <g:hiddenField name="banknombre" id="clienteId" value="${instance?.cliente?.id}"/>
    </div>
    <g:render template="/cliente/templates/buscarClientes" model="[instance:instance]" />
</div>

<div class="prop seccion">
    <div class="name left"><label for="anyo">
        <g:message code="pedidoHistorico.anyo.label" default="Referencia"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'anyo', 'error')} required">
        <g:textField class="Numeric" name="anyo" maxlength="20" size="20" value="${instance?.anyo}"/>
    </div>

    <div class="name left"><label for="ultimaCompra">
        <g:message code="pedidoHistorico.ultimaCompra.label" default="ultimaCompra"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'ultimaCompra', 'error')} required">
        <g:datePicker name="ultimaCompra" value="${instance?.ultimaCompra}"/>
    </div>

</div>

