<g:each in="${ordenIdioma}" var="idioma">
	<div class="prop seccion">
		<div class="name left">
			<label for="descripcion.${idioma}">
				${message(code: 'main.descripcion.'+idioma+'.label', default: 'Descripción '+idioma)}
				<span class="required-indicator">*</span>
			</label>
		</div>
		<div class="left value ${hasErrors(bean: instance, field: 'descripcion.'+idioma, 'errors')} required">
			<g:textField class="campo295" name="descripcion.${idioma}" maxlength="50" required="" value="${instance?.descripcion[idioma]}"/>
		</div>
	</div>
</g:each>