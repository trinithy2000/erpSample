<g:set var="ownerEntity" value="${ownerEntity?:params['ownerEntity']}" />
<g:set var="entityGenre" value="${entityGenre?:'masc'}" />
<g:set var="entityChild" value="${entityChild?:params['entityChild']}" />
<g:set var="entity" value="${entity?:params['entity']}" />

<div id="lista">
	<div class="toggle head open init" onclick="showRegion($(this))">
		<h1><span class="ui-icon ui-icon-triangle-1-e"></span><g:message code="default.list.label" args="[message(code: entity +'.plural.label')]" /></h1>
	</div>
	<div id="list-${entity}" class="body" role="main">
	
		<g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
	
		<div id="list-${entity}-filtro">
			<g:render template="/entidad/template/lista" model="${['ownerEntity':ownerEntity,'entityChild':entityChild,'tarifa':tarifa]}" />
		</div>
		<div class="nav2">
			<g:if test="${entityGenre == 'fem'}">	
				<span class="menuButton"><g:link class="boton" action="create"><g:message code="default.nueva.label" args="[message(code: entity +'.label')]" /></g:link></span>
			</g:if>
			<g:elseif test="${entityGenre == 'masc'}">	
				<span class="menuButton"><g:link class="boton" action="create"><g:message code="default.nuevo.label" args="[message(code: entity +'.label')]" /></g:link></span>
			</g:elseif>
		</div>		
	</div>
</div>