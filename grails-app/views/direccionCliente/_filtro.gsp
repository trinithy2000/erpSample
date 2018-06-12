<%@ page import="cliente.DireccionCliente" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.numero">
        <g:message code="direccionCliente.numero.label" default="Numero"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.numero" maxlength="15" size="15" value="${params?.filtro?.numero}"/>
    </div>

    <div class="name left"><label for="filtro.calle">
        <g:message code="direccionCliente.calle.label" default="Calle"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.calle" maxlength="60" size="60" value="${params?.filtro?.calle}"/>
    </div>
</div>

<div class="prop seccion">
    <div class="name left"><label for="filtro.tipo">
        <g:message code="direccionCliente.tipo.label" default="Tipo"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.tipo" maxlength="15" size="15" value="${params?.filtro?.tipo}"/>
    </div>

    <div class="name left"><label for="filtro.descripcion">
        <g:message code="direccionCliente.descripcion.label" default="Descripción"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.descripcion" maxlength="60" size="40" value="${params?.filtro?.descripcion}"/>
    </div>

</div>