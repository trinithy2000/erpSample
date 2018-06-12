<%@ page import="factura.Tarifa" %>

<div class="prop seccion">
    <div class="name left"><label for="cliente">
        <g:message code="cliente.label" default="Cliente"/>:</label></div>
    <div class="value left ${hasErrors(bean: instance, field: 'cliente', 'error')} required">
        <g:textField id="nombreCliente" name="cliente" maxlength="150" size="60" value="${instance?.cliente?.nombre}"/>
        <g:hiddenField name="cliente" id="clienteId" value="${instance?.cliente?.id}"/>
    </div>
    <g:render template="/cliente/templates/buscarClientes" model="[instance:instance]" />
</div>

<div class="prop seccion">
    <div class="name left"><label for="producto">
        <g:message code="producto.label" default="Producto"/>:</label></div>
    <div class="value left ${hasErrors(bean: instance, field: 'producto', 'error')} required">
        <g:textField id="nombreProducto" name="producto" maxlength="150" size="60" value="${instance?.producto?.nombre}"/>
        <g:hiddenField name="producto" id="productoId" value="${instance?.producto?.id}"/>
    </div>
    <g:render template="/cliente/templates/buscarClientes" model="[instance:instance]" />
</div>


<div class="prop seccion">
    <div class="name left"><label for="tarifa">
        <g:message code="tarifa.tarifa.label" default="Tarifa"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'tarifa', 'error')} required Numeric">
        <g:textField name="tarifa" maxlength="10" size="10" value="${instance?.tarifa}"/>
    </div>

    <div class="name left"><label for="tarifadefecto">
        <g:message code="tarifa.tarifadefecto.label" default="Tarifa defecto"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'tarifadefecto', 'error')} required Numeric">
        <g:textField name="tarifadefecto" maxlength="10" size="10" value="${instance?.tarifadefecto}"/>
    </div>
</div>
