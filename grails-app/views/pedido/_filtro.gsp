<%@ page import="pedido.Pedido" %>

<div class="prop seccion">
    <div class="name left"><label for="filtro.nombre">
        <g:message code="pedido.cliente.label" default="Cliente"/>:</label></div>
        
    <div class="value left">
        <g:textField name="filtro.nombre" maxlength="50" size="50" value="${params?.filtro?.nombre}"/>
    </div>
</div>

<div class="prop seccion">
    <div class="name left"><label for="filtro.referencia">
        <g:message code="pedido.referencia.label" default="Referencia"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.referencia" maxlength="50" size="50" value="${params?.filtro?.referencia}"/>
    </div>

    <div class="name left" style="min-width: 9%;"><label for="filtro.fechaoferta">
        <g:message code="pedido.fechaoferta.label" default="Fecha de la oferta"/>:</label></div>

    <div class="value left">
        <g:datePicker name="filtro.fechaoferta" precision="day" value="${params?.filtro?.fechaoferta}" default="none" noSelection="['': '']"  />
    </div>

</div>


<div class="prop seccion">
    <div class="name left"><label for="filtro.descripcion">
        <g:message code="pedido.descripcion.label" default="Descripciòn"/>:</label></div>

    <div class="value left">
        <g:textField name="filtro.descripcion" maxlength="50" size="50" value="${params?.filtro?.descripcion}"/>
    </div>

    <div class="name left" style="min-width: 9%;"><label for="filtro.fechavalidez">
        <g:message code="pedido.fechavalidez.label" default="Fecha de validez"/>:</label></div>

    <div class="value left">
        <g:datePicker name="filtro.fechavalidez" precision="day" value="${params?.filtro?.fechavalidez}" default="none" noSelection="['': '']"  />
    </div>

</div>


<div class="prop seccion">
    <div class="name left"><label for="filtro.prePedido">
        <g:message code="pedido.prePedido.label" default="Pre-pedido"/>:</label></div>

    <div class="value left">
        <g:checkBox name="filtro.prePedido" value="${params?.filtro?.prePedido}"/>
    </div>

</div>