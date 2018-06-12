<g:form controller="cliente" action="ajx_filtrar_clientes">
    <div id="myDialogClientes" style="display:none">

        <label for="nombre" style="float:left;">
            <g:message code="cliente.nombre.label" default="Referencia"/>:</label>
        <g:textField  id ="nombreClienteBuscar" name="nombre" style="float:left;margin-left:5px;" maxlength="12" size="30"
                     class="limpiarImp"/>

        <div id="listaResultadoCliente" style="margin-top: 25px;">
            <g:render template="/cliente/templates/listaClienteDialog" model="[noEdit: true]"/>
        </div>
    </div>
</g:form>