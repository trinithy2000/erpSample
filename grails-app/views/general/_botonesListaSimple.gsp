<td class="iconos">
	<g:if test="${!noEdit}">
	    <g:link class="icono" action="edit" id="${instance?.id}">
			<asset:image src="edit.png" title="${message(code: 'default.button.edit.label',args:[entityName])}" alt="${message(code: 'default.button.edit.label',args:[entityName])}" />
	   	</g:link>
	</g:if>
   	<g:link class="icono" action="delete" id="${instance?.id}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Está seguro?')}');">
		<asset:image src="delete.png" title="${message(code: 'default.button.delete.label')}" alt="${message(code: 'default.button.delete.label')}" />
	</g:link>
	</td>

