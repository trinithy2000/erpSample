<g:set var="sinBaja" value="${sinBaja?:false}" />

<g:if test="${!session.usuarioConsulta}">
	<td class="iconos">
		<g:link controller="${entity}" action="edit" id="${instance?.id}">
	   		<img src="${grailsApplication.config.estatico.aplicacion}/images/edit.png" title="${message(code: 'default.button.edit.label')}" alt="${message(code: 'default.button.edit.label')}" />
		</g:link>
		<g:link controller="${entity}" action="delete" id="${instance?.id}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Está seguro?')}');">
			<img src="${grailsApplication.config.estatico.aplicacion}/images/delete.png" title="${message(code: 'default.button.delete.label')}" alt="${message(code: 'default.button.delete.label')}" />
		</g:link>

		<g:if test="${!sinBaja}">
			<span id="bajaLogica${instance?.id}" style="display: inline-block;">
				<g:render template="/motivoBaja/bajaLogica"/>
			</span>
		</g:if>	
	</td>
</g:if>