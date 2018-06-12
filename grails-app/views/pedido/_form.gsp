<%@ page import="pedido.Pedido" %>

<div class="prop seccion">
    <div class="name left"><label for="referencia">
        <g:message code="pedido.referencia.label" default="Referencia"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'referencia', 'error')} required">
        <g:textField name="referencia" maxlength="20" size="20" value="${params?.referencia?:instance?.referencia}"/>
    </div>

    <div class="name left"><label for="fechaoferta">
        <g:message code="pedido.fechaoferta.label" default="Fecha"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'fechaoferta', 'error')} required">
        <g:datePicker name="fechaoferta" precision="day" value="${params?.fechaoferta?:instance?.fechaoferta}" default="none" noSelection="['': '']"  />
    </div>

    <div class="name left"><label for="fechavalidez">
        <g:message code="pedido.fechavalidez.label" default="Fecha"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'fechavalidez', 'error')} required">
        <g:datePicker name="fechavalidez" precision="day" value="${params?.fechavalidez?:instance?.fechavalidez}" default="none" noSelection="['': '']"  />
    </div>

</div>

<div class="prop seccion">
    <div class="name left"><label for="pedido.esprePedido">
        <g:message code="pedido.prePedido.label" default="Pre-pedido"/>:</label></div>

    <div class="value left">
        <g:checkBox name="pedido.esprePedido" value="${params?.esPrepedido?:instance?.esPrepedido}" />
    </div>
</div>

<div class="prop seccion">
    <div class="name left"><label for="descripcion">
        <g:message code="pedido.descripcion.label" default="Descripción"/>:</label></div>

    <div class="value left ${hasErrors(bean: instance, field: 'descripcion', 'error')} required" style="min-width: 95px;">
        <g:textArea name="descripcion" cols="73" rows="8" maxlength="500" value="${instance?.descripcion}"/>
    </div>
</div>

