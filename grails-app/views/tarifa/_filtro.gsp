<%@ page import="factura.Tarifa" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.tarifa">
        <g:message code="tarifa.tarifa.label" default="Tarifa"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.tarifa" maxlength="10" size="10" value="${params?.filtro?.tarifa}"/>
    </div>

    <div class="name left"><label for="filtro.tarifadefecto">
        <g:message code="tarifa.tarifadefecto.label" default="Tarifa defecto"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.tarifadefecto" maxlength="10" size="10" value="${params?.filtro?.tarifadefecto}"/>
    </div>

</div>
