<g:if test="${!session.usuarioConsulta||(entity=='placa'&&session.usuarioPlacas)}">
	<td class="iconos" style="width: 78px;">
		<g:remoteLink class="icono" controller="${entity}" action="ajx_edit" id="${instance.id}" update="${entity}">
	   		<img src="/images/edit.png" title="${message(code: 'default.button.edit.label',args:[entityName])}" alt="${message(code: 'default.button.edit.label',args:[entityName])}" />
	   	</g:remoteLink>
	   	<g:remoteLink class="icono" controller="${entity}" action="ajx_delete" id="${instance?.id}" update="${entity}" before="if(!confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Está seguro?')}')) return false">
		   		<img src="/images/delete.png" title="${message(code: 'default.button.delete.label')}" alt="${message(code: 'default.button.delete.label')}" />
		</g:remoteLink>
		<g:remoteLink controller="${entity}" action="ajx_actualizarFechaBaja" id="${instance?.id}" update="${entity}" before="if(!confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Está seguro?')}')) return false">
			<g:if test="${instance?.fechaBaja}">
				<img src="/images/check.png"
					 title="${message(code: 'default.button.activarRegistro.label', default: 'Activar')}" 
	                 alt="${message(code: 'default.button.activarRegistro.label', default: 'Activar')}"/>
			</g:if>
			<g:else>
				<img src="/images/eliminar.png"
					 title="${message(code: 'default.button.bajaLogica.label', default: 'Baja lógica')}" 
	                 alt="${message(code: 'default.button.bajaLogica.label', default: 'Baja lógica')}"/>
			</g:else>
		</g:remoteLink>
	</td>
</g:if>