<%@ page import="cliente.BancoCliente" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.cliente">
        <g:message code="cliente.label" default="Cliente"/>:</label></div>
    <div class="value left">
        <g:textField name="filtro.cliente" maxlength="40" size="40" value="${params?.filtro?.cliente}"/>
    </div>
</div>
<div class="prop seccion">
    <div class="name left"><label for="filtro.banknombre">
        <g:message code="cliente.nombre.label" default="Nombre"/>:</label></div>
    <div class="value left">
        <g:textField name="filtro.banknombre" maxlength="40" size="40" value="${params?.filtro?.banknombre}"/>
    </div>

</div>

