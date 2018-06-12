<g:select
    class="cselect"
    name="filtro.cliente"
    from="${clientes}"
    optionKey="id"
    value="${params?.filtro?.cliente}"
    disabled="${cientes?false:true}"
    noSelection ="${['':message(code: 'default.seleccione.label', args: [message(code: 'cliente.label', default: 'Clientes')] , default: '-- Seleccione Cliente --')]}"/>