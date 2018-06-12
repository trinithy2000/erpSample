<%@ page import="cliente.Cliente" %>

<div class="prop seccion">
    <div class="name left"><label for="nombre">
        <g:message code="cliente.nombre.label" default="Nombre"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'nombre', 'error')} required">
        <g:textField name="nombre" maxlength="150" size="131" value="${instance?.nombre}"/>
    </div>
</div>

<div class="prop seccion">
    <div class="name left"><label for="telefono">
        <g:message code="cliente.telefono.label" default="telefono"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'telefono', 'error')} required">
        <g:textField name="telefono" maxlength="20" size="25" value="${instance?.telefono}"/>
    </div>

    <div class="name left"><label for="fax">
        <g:message code="cliente.fax.label" default="fax"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'fax', 'error')} required">
        <g:textField name="fax" maxlength="20" size="25" value="${instance?.fax}"/>
    </div>

</div>

<div class="prop seccion">
    <div class="name left"><label for="email">
        <g:message code="cliente.email.label" default="E-mail"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'email', 'error')} required">
        <g:textField name="email" maxlength="50" size="25" value="${instance?.email}"/>
    </div>

    <div class="name left"><label for="web">
        <g:message code="cliente.web.label" default="Web"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'web', 'error')} required">
        <g:textField name="web" maxlength="150" size="83" value="${instance?.web}"/>
    </div>

</div>

<div class="prop seccion">
    <div class="name left"><label for="descripcion">
        <g:message code="cliente.descripcion.label" default="Descripción"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'descripcion', 'error')} required">
        <g:textArea name="descripcion" rows="5" cols="98" value="${instance?.descripcion}"/>
    </div>
</div>