<%@ page import="cliente.ContactoCliente" %>

<div class="prop seccion" style="margin-bottom: 5px;">
    <div class="name left"><label for="cliente">
        <g:message code="cliente.label" default="Cliente"/>:</label></div>
    <div class="value left ${hasErrors(bean: instance?.cliente, field: 'cliente', 'error')} required">
        <g:textField id="nombreCliente" name="cliente" maxlength="150" size="64" value="${instance?.cliente?.nombre}" disabled="true" />
        <g:hiddenField name="cliente.id" id="clienteId" value="${instance?.cliente?.id}"/>
    </div>
    <input class="left boton" style="margin-top: 2px;" type="button" id="${entity}_openDialogFact" name="openDialog" value="${g.message(code:'default.buscar', args:[g.message(code:'cliente.plural.label')])}"
           onclick="ventana.init(['myDialogClientes','buscarClientes', 'Buscar Clientes'],['nombreClienteBuscar']);"/>
</div>

<div class="prop seccion">
    <div class="name left"><label for="nombre">
        <g:message code="contactoCliente.nombre.label" default="Nombre"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'nombre', 'error')} required">
        <g:textField name="nombre" maxlength="150" size="60" value="${instance?.nombre}"/>
    </div>

    <div class="name left"><label for="apellidos">
        <g:message code="contactoCliente.apellidos.label" default="Apellidos"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'apellidos', 'error')} required">
        <g:textField name="apellidos" maxlength="150" size="60" value="${instance?.apellidos}"/>
    </div>
</div>

<div class="prop seccion">

    <div class="name left"><label for="telefono">
        <g:message code="contactoCliente.telefono.label" default="telefono"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'telefono', 'error')} required" style="min-width: 95px;">
        <g:textField class="Numeric" name="telefono" maxlength="30" size="30" value="${instance?.telefono}"/>
    </div>

    <div class="name left"><label for="movil">
        <g:message code="contactoCliente.movil.label" default="Movil"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'movil', 'error')} required" style="min-width: 95px;">
        <g:textField class="Numeric" name="movil" maxlength="30" size="30" value="${instance?.movil}"/>
    </div>

    <div class="name left"><label for="email">
        <g:message code="contactoCliente.email.label" default="email"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'email', 'error')} required">
        <g:textField name="email" maxlength="30" size="37" value="${instance?.email}"/>
    </div>
</div>

<div class="prop seccion">
    <div class="name left"><label for="posicion">
        <g:message code="contactoCliente.posicion.label" default="posicion"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'posicion', 'error')} required" style="min-width: 95px;">
        <g:textField name="posicion" maxlength="30" size="30" value="${instance?.posicion}"/>
    </div>

    <div class="name left"><label for="descripcion">
        <g:message code="contactoCliente.descripcion.label" default="descripcion"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'descripcion', 'error')} required">
        <g:textField name="descripcion" maxlength="150" size="90" value="${instance?.descripcion}"/>
    </div>
</div>





