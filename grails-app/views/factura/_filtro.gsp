<%@ page import="factura.Factura" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.referencia">
        <g:message code="factura.referencia.label" default="Referencia"/>:</label></div>
    <div class="value left">
        <g:textField name="filtro.referencia" maxlength="20" size="20" value="${params?.filtro?.referencia}"/>
    </div>

    <div class="name left"><label for="filtro.fechaFactura">
        <g:message code="factura.fechaFactura.label" default="Fecha de factura"/>:</label></div>
    <div class="value left">
        <g:datePicker name="filtro.fechaFactura" precision="day" value="${params?.filtro?.fechaFactura}" default="none" noSelection="['': '']"  />
    </div>

</div>
