<%@ page import="producto.Producto" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.nombre">
        <g:message code="producto.nombre.label" default="Nombre"/>:</label></div>
    <div class="value left">
        <g:textField name="filtro.nombre" maxlength="75" size="40" value="${params?.filtro?.nombre}"/>
    </div>

    <div class="name left"><label for="filtro.codigo">
        <g:message code="producto.codigo.label" default="Codigo"/>:</label></div>
    <div class="value left">
        <g:textField name="filtro.codigo" maxlength="15" size="15" value="${params?.filtro?.codigo}"/>
    </div>

</div>
