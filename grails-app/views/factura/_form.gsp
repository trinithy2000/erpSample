<%@ page import="factura.Factura" %>

<div class="prop seccion">
    <div class="name left"><label for="referencia">
        <g:message code="factura.referencia.label" default="Referencia"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'referencia', 'error')} required">
        <g:textField name="referencia" maxlength="20" size="20" value="${instance?.referencia}"/>
    </div>

    <div class="name left"><label for="fechaFactura">
        <g:message code="factura.fechaFactura.label" default="Fecha"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'fechaFactura', 'error')} required">
        <g:datePicker name="fechaFactura" precision="day" value="${params?.fechaFactura}" default="none" noSelection="['': '']"  />
    </div>

</div>

<div class="prop seccion">
    <div class="name left"><label for="descripcion">
        <g:message code="factura.descripcion.label" default="Descripción"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'descripcion', 'error')} required" style="min-width: 95px;">
        <g:textArea name="descripcion" maxlength="500" cols="90" rows="8" value="${instance?.descripcion}"/>
    </div>
</div>

