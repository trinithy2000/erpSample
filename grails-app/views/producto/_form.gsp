<%@ page import="producto.Producto" %>

<div class="prop seccion">
    <div class="name left" style="min-width: 8%;"><label for="nombre">
        <g:message code="producto.nombre.label" default="Nombre"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'nombre', 'error')} required">
        <g:textField class="Numeric" name="nombre" maxlength="75" size="75" value="${instance?.nombre}"/>
    </div>

    <div class="name left"><label for="codigo">
        <g:message code="producto.codigo.label" default="Codigo"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'codigo', 'error')} required">
        <g:textField name="codigo" maxlength="15" size="15" value="${instance?.codigo}"/>
    </div>
</div>

<div class="prop seccion">

    <div class="name left" style="min-width: 8%;"><label for="kg">
        <g:message code="producto.kg.label" default="Zip"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'kg', 'error')} required" >
        <g:checkBox name="kg" value="${instance?.kg}"/>
    </div>

    <div class="name left"><label for="congelado">
        <g:message code="producto.congelado.label" default="Provincia"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'congelado', 'error')} required">
        <g:checkBox name="congelado" value="${instance?.congelado}"/>
    </div>

    <div class="name left"><label for="precioventa">
        <g:message code="producto.precioventa.label" default="Precio de venta"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'precioventa', 'error')} required">
        <g:textField class="Numeric" name="precioventa" maxlength="10" size="10" value="${instance?.precioventa}"/>
    </div>

    <div class="name left"><label for="tarifa">
        <g:message code="producto.tarifa.label" default="Tarifa"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'tarifa', 'error')} required" style="min-width: 95px;">
        <g:textField class="Numeric" name="tarifa" maxlength="10" size="10" value="${instance?.tarifa}"/>
    </div>
</div>

<div class="prop seccion">
    <div class="name left" style="min-width: 8%;"><label for="descripcion">
        <g:message code="producto.descripcion.label" default="Descripción"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'descripcion', 'error')} required">
        <g:textArea name="descripcion" maxlength="500" cols="85" rows="8" value="${instance?.descripcion}"/>
    </div>
</div>