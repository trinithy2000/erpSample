<%@ page import="cliente.ContactoCliente" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.nombre">
        <g:message code="contactoCliente.nombre.label" default="Nombre"/>:</label></div>
    <div class="value left">
        <g:textField name="filtro.nombre" maxlength="40" size="40" value="${params?.filtro?.nombre}"/>
    </div>
</div>

<div class="prop seccion">
    <div class="name left"><label for="filtro.apellidos">
        <g:message code="contactoCliente.apellidos.label" default="Apellidos"/>:</label></div>
    <div class="value left">
        <g:textField name="filtro.apellidos" maxlength="40" size="40" value="${params?.filtro?.apellidos}"/>
    </div>

</div>

