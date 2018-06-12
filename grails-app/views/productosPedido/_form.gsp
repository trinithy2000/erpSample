<%@ page import="pedido.ProductosPedido" %>

<div class="prop seccion">
    <div class="name left"><label for="producto">
        <g:message code="cliente.label" default="Cliente"/>:</label></div>
    <div class="value left ${hasErrors(bean: instance.producto, field: 'producto', 'error')} required">
        <g:textField id="nombreProducto" name="producto" maxlength="150" size="60" value="${instance?.producto?.nombre}"/>
        <g:hiddenField name="producto" id="productoId" value="${instance?.producto?.id}"/>
    </div>
    <g:render template="/cliente/templates/buscarClientes" model="[instance:instance]" />
</div>

<div class="prop seccion">
    <div class="name left"><label for="unidades">
        <g:message code="productosPedido.unidades.label" default="Unidades"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'unidades', 'error')} required">
        <g:textField class="Numeric" name="unidades" maxlength="20" size="20" value="${instance?.unidades}"/>
    </div>

    <div class="name left"><label for="cantidad">
        <g:message code="productosPedido.cantidad.label" default="cantidad"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'cantidad', 'error')} required">
        <g:datePicker name="cantidad" value="${instance?.cantidad}"/>
    </div>

</div>

