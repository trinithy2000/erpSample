package cliente

class DireccionCliente {

    String numero
    String calle
    String zip
    String provincia
    String tipo
    String descripcion

    static belongsTo = [cliente: Cliente]

    static constraints = {
        numero maxSize: 15
        calle maxSize: 150
        zip maxSize: 10
        provincia nullable: true, maxSize: 150
        tipo nullable: true, maxSize: 20
        descripcion nullable: true, maxSize: 500
    }

    static mapping = {
        table 'direccion_cliente'
    }

    static namedQueries = {
        filtroListaCount { filtroIntance ->
            if (filtroIntance.numero) ilike 'numero', '%' + filtroIntance.numero + '%'
            if (filtroIntance.calle) ilike 'calle', '%' + filtroIntance.calle + '%'
            if (filtroIntance.zip) ilike 'zip', '%' + filtroIntance.zip + '%'
            if (filtroIntance.provincia) ilike 'provincia', '%' + filtroIntance.provincia + '%'
            if (filtroIntance.tipo) ilike 'tipo', '%' + filtroIntance.tipo + '%'
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
        }
        filtroLista { filtroIntance ->
            if (filtroIntance.numero) ilike 'numero', '%' + filtroIntance.numero + '%'
            if (filtroIntance.calle) ilike 'calle', '%' + filtroIntance.calle + '%'
            if (filtroIntance.zip) ilike 'zip', '%' + filtroIntance.zip + '%'
            if (filtroIntance.provincia) ilike 'provincia', '%' + filtroIntance.provincia + '%'
            if (filtroIntance.tipo) ilike 'tipo', '%' + filtroIntance.tipo + '%'
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
            if (filtroIntance.campoOrden) order(filtroIntance.campoOrden, filtroIntance.orden)
        }
    }
}
