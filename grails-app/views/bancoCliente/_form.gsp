<%@ page import="cliente.BancoCliente" %>

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
    <div class="name left" ><label for="banknombre">
        <g:message code="bancoCliente.banknombre.label" default="Nombre"/>:</label></div>
    <div class="value left ${hasErrors(bean: instance, field: 'banknombre', 'error')} required">
        <g:textField name="banknombre" maxlength="150" size="64" value="${instance?.banknombre}"/>
    </div>
</div>

<div class="prop seccion">
    <div class="name left">
        <label for="bankiban"><g:message code="bancoCliente.bankiban.label" default="IBAN"/>/</label>
        <label for="bankent"><g:message code="bancoCliente.bankent.label" default="Entidad"/>:</label></div>
    <div class="value left ${hasErrors(bean: instance, field: 'bankiban', 'error')} required" style="min-width: 95px;">
        <g:textField name="bankiban" maxlength="4" size="4" value="${instance?.bankiban}"/> /
        <g:textField class="Numeric" name="bankent" maxlength="4" size="4" value="${instance?.bankent}"/>
    </div>

    <div class="name left" style="min-width: 4.1%;"><label for="bankcont">
        <g:message class="Numeric" code="bancoCliente.bankcont.label" default="Cuenta"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'bankcont', 'error')} required" >
        <g:textField  class="Numeric" name="bankcont" maxlength="4" size="4" value="${instance?.bankcont}"/>
    </div>

    <div class="name left" style="min-width: 4.1%;"><label for="bankcuenta">
        <g:message class="Numeric" code="bancoCliente.bankcuenta.label" default="Cuenta"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'fax', 'error')} required">
        <g:textField name="bankcuenta" maxlength="12" size="12" value="${instance?.bankcuenta}"/>
    </div>

</div>

