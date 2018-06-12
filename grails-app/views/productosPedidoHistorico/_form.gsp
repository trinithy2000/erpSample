<%@ page import="pedido.ProductosPedidoHistorico" %>

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
    <div class="name left"><label for="unidadesAnyo">
        <g:message code="productosPedidoHistorico.unidadesAnyo.label" default="Unidades"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'unidadesAnyo', 'error')} required">
        <g:textField class="Numeric" name="unidadesAnyo" maxlength="20" size="20" value="${instance?.unidadesAnyo}"/>
    </div>

    <div class="name left"><label for="cantidadAnyo">
        <g:message code="productosPedidoHistorico.cantidadAnyo.label" default="cantidad"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'cantidadAnyo', 'error')} required">
        <g:datePicker name="cantidadAnyo" value="${instance?.cantidadAnyo}"/>
    </div>

</div>

