<table>
    <thead>
    <tr>
        <th><g:message code="cliente.nombre.label" /></th>
        <th><g:message code="cliente.telefono.label" /></th>
        <th><g:message code="cliente.email.label" /></th>
    </tr>
    </thead>

    <tbody>
    <g:each in="${clienteList}" status="i" var="cont">
        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}" id="linea${cont?.id}">
            <td><a href="#" onclick="copiaValor(['myDialogClientes','${cont?.nombre}','${cont?.id}']);">${cont?.nombre}</a></td>
            <td>${cont?.telefono}</td>
            <td>${cont?.email}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${clienteTotal}" >
    <div class="paginateButtons">
        <erp:remotePaginate action="ajx_filtrar_clientes" total="${clienteTotal}" update="listaResultadoCliente" /></div>
</g:if>

<br/><br/><br/>
<g:hasErrors bean="${errCliente}" >
    <g:eachError bean="${errCliente}" ><span style="color:red;" ><g:message error="${it}"/></span></g:eachError>
</g:hasErrors>