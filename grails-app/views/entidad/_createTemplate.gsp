<g:set var="tarifa" value="${tarifa?:params['tarifa']?:false}" />

	<div class="nav2">
		<h1 style="width: 50%; float: left;"><g:message code="default.create.label" args="[message(code: entity +'.label')]" /></h1>
		<div style="float: right;">
			<g:link class="boton botonRight" action="list"><g:message code="default.list.label" args="[message(code: entity +'.plural.label')]" /></g:link>
		</div>
	</div>
	
	<div id="create-${entity}" class="body" role="main">			
		<g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
		<g:hasErrors bean="${instance}">
			<div class="errors">
				<ul role="alert">
					<g:eachError bean="${instance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
			</div>
		</g:hasErrors>
		<g:form action="save" >
	           <div class="dialog"><g:render template="form"/></div>
	           <g:hiddenField name="volverCreate" value="${params.volverCreate}"/>
			<div class="botones">
				<g:submitButton name="create" class="boton" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				<g:if test="${params.volverCreate}">
					<g:link class="boton" controller="${params.volverCreate}" action="create" params="${[
					  'cups.id':params?.cups?.id,
					  'cups.identificador':params?.cups?.identificador,
					  'contrato.id':params?.contrato?.id, 
					  'contrato.referencia':params?.contrato?.referencia,
					  'Factura.id':params?.factura?.id,
					  'Factura.numeroFactura':params?.factura?.numeroFactura]}"><g:message code="default.back.label"/></g:link>
				</g:if>
				<g:else>
					<g:link class="boton" controller="${controladorVolver}" action="${accionVolver}" id="${idVolver}"><g:message code="default.back.label"/></g:link>
				</g:else>
			</div>						
		</g:form>
	</div>
	
	  
	
