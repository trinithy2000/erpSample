<%@ page import="cliente.DireccionCliente" %>

<div class="prop seccion">
    <div class="name left"><label for="numero">
        <g:message code="direccionCliente.numero.label" default="Numero"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'numero', 'error')} required">
        <g:textField class="Numeric" name="numero" maxlength="15" size="10" value="${instance?.numero}"/>
    </div>

    <div class="name left" style="min-width: 8%;"><label for="calle">
        <g:message code="direccionCliente.calle.label" default="Calle"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'calle', 'error')} required">
        <g:textField name="calle" maxlength="150" size="60" value="${instance?.calle}"/>
    </div>
</div>

<div class="prop seccion">

    <div class="name left"><label for="zip">
        <g:message code="direccionCliente.zip.label" default="Zip"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'zip', 'error')} required">
        <g:textField class="Numeric" name="zip" maxlength="10" size="10" value="${instance?.zip}"/>
    </div>

    <div class="name left"  style="min-width: 8%;"><label for="provincia">
        <g:message code="direccionCliente.provincia.label" default="Provincia"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'provincia', 'error')} required">
        <g:textField class="Numeric" name="provincia" maxlength="150" size="60" value="${instance?.provincia}"/>
    </div>

</div>

<div class="prop seccion">
    <div class="name left"><label for="tipo">
        <g:message code="direccionCliente.tipo.label" default="tipo"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'tipo', 'error')} required">
        <g:textField name="tipo" maxlength="20" size="10" value="${instance?.tipo}"/>
    </div>

    <div class="name left" style="min-width: 8%;"><label for="descripcion">
        <g:message code="direccionCliente.descripcion.label" default="descripcion"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'descripcion', 'error')} required">
        <g:textArea name="descripcion" maxlength="500" cols="45" rows="8" value="${instance?.descripcion}"/>
    </div>
</div>
