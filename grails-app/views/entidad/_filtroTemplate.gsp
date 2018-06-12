<g:set var="ownerEntity" value="${ownerEntity?:params['ownerEntity']}" />
<g:set var="entityGenre" value="${entityGenre?:'masc'}" />
<g:set var="entityChild" value="${entityChild?:params['entityChild']}" />

<div id="filtro">
	<div class="toggle head open init" onclick="showRegion($(this))">
		<h1><span class="ui-icon ui-icon-triangle-1-e"></span><g:message code="default.filtro.label" args="[message(code: entity + '.plural.label', default: 'Cups')]" /></h1>
	</div>
	<div class="contenedor">
		<g:form name="filtrar" action="limpiarFiltro">
			
			<g:hiddenField name="filtro.campoOrden" value="${params?.filtro?.campoOrden}"/>
			<g:hiddenField name="filtro.orden" value="${params?.filtro?.orden}"/>
			<g:hiddenField name="ownerEntity" value="${ownerEntity?:params['ownerEntity']}"/>
			<g:hiddenField name="entityGenre" value="${entityGenre?:params['entityGenre']?:'masc'}"/>
			<g:hiddenField name="entityChild" value="${entityChild?:[params?.entityChild]?.flatten()}" />

			<div class="tablaBus">
				<g:render template="/${entity}/filtro" model="['instance':instance]"/>	
			</div>
				
			<div style="text-align: right;">

				<g:submitToRemote url="[action: 'ajx_filtrar']" class="boton" update="list-${entity}-filtro"
					    value="${message(code: 'default.button.filtrar.label', default: 'Filtrar')}" />
				<g:submitButton name="limpiarFiltro" class="boton"
						value="${message(code: 'default.button.limpiar.label', default: 'Limpiar')}"/>

			</div>
		</g:form>
	</div>
</div>