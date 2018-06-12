<g:set var="tarifa" value="${tarifa?:params['tarifa']?:false}" />

	<h1></h1>
	
	<div class="nav2">
		<h1 style="width: 50%; float: left;"><g:message code="default.edit.label" args="[message(code: entity +'.label')]" /></h1>
		<div style="float: right;">
			<g:link class="boton botonRight" action="list"><g:message code="default.list.label" args="[message(code: entity +'.plural.label')]" /></g:link>
		</div>
	</div>
	
	
	<div id="edit-${entity}" class="body" role="main">			
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
		<g:form method="POST" >
			<g:hiddenField name="id" value="${instance?.id}" />
			<g:hiddenField name="version" value="${instance?.version}" />
			<div class="dialog"><g:render template="form"/></div>
			<div class="botones">
				<g:actionSubmit class="boton" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				<g:link class="boton" action="show" id="${instance?.id}"><g:message code="default.back.label"/></g:link>
			</div>
		</g:form>
	</div>
