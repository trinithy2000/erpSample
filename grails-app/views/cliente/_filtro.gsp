<%@ page import="cliente.Cliente" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.nombre">
        <g:message code="cliente.nombre.label" default="Nombre"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.nombre" maxlength="25" size="25" value="${params?.filtro?.nombre}"/>
    </div>

    <div class="name left"><label for="filtro.telefono">
        <g:message code="cliente.telefono.label" default="telefono"/>:</label></div>

    <div class="value left">
        <g:textField class="Numeric" name="filtro.telefono" maxlength="15" size="25" value="${params?.filtro?.telefono}"/>
    </div>

    <div class="name left"><label for="filtro.fax">
        <g:message code="cliente.fax.label" default="fax"/>:</label></div>

    <div class="value left">
        <g:textField class="Numeric" name="filtro.fax" maxlength="15" size="20" value="${params?.filtro?.fax}"/>
    </div>

</div>

<div class="prop seccion">
    <div class="name left"><label for="filtro.email">
        <g:message code="cliente.email.label" default="E-mail"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.email" maxlength="25" size="25" value="${params?.filtro?.email}"/>
    </div>

    <div class="name left"><label for="filtro.web">
        <g:message code="cliente.web.label" default="Web"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.web" maxlength="25" size="25" value="${params?.filtro?.web}"/>
    </div>

    <div class="name left"><label for="filtro.descripcion">
        <g:message code="cliente.descripcion.label" default="Descripción"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.descripcion" maxlength="30" size="30" value="${params?.filtro?.descripcion}"/>
    </div>
</div>