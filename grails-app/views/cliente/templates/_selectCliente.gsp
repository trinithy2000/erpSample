<g:select
    class="cselect"
    name="cliente.id"
    id="cliente"
    from="${clientes}"
    optionKey="id"
    value="${instance?.cliente?.id}"
    disabled="${cientes?false:true}"
    noSelection ="${['':message(code: 'default.seleccione.label', args: [message(code: 'cliente.label', default: 'Clientes')] , default: '-- Seleccione Cliente --')]}"/>