package cliente


class ContactoCliente {

    String apellidos
    String nombre
    String posicion
    String telefono
    String movil
    String email
    String descripcion

    static belongsTo = [cliente: Cliente]

    static constraints = {
        apellidos maxSize: 150
        nombre maxSize: 150
        posicion maxSize: 150
        telefono maxSize: 30
        movil maxSize: 30
        email maxSize: 50
        descripcion maxSize: 500
    }

    static mapping = {
        table 'contacto_cliente'
    }

    static namedQueries = {
        filtroListaCount { filtroIntance ->
            if (filtroIntance.apellidos) ilike 'apellidos', '%' + filtroIntance.apellidos + '%'
            if (filtroIntance.nombre) ilike 'nombre', '%' + filtroIntance.nombre + '%'
            if (filtroIntance.posicion) ilike 'posicion', '%' + filtroIntance.posicion + '%'
            if (filtroIntance.telefono) ilike 'telefono', '%' + filtroIntance.telefono + '%'
            if (filtroIntance.fax) ilike 'fax', '%' + filtroIntance.fax + '%'
            if (filtroIntance.movil) ilike 'movil', '%' + filtroIntance.movil + '%'
            if (filtroIntance.email) ilike 'email', '%' + filtroIntance.email + '%'
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
        }
        filtroLista { filtroIntance ->
            if (filtroIntance.apellidos) ilike 'apellidos', '%' + filtroIntance.apellidos + '%'
            if (filtroIntance.nombre) ilike 'nombre', '%' + filtroIntance.nombre + '%'
            if (filtroIntance.posicion) ilike 'posicion', '%' + filtroIntance.posicion + '%'
            if (filtroIntance.telefono) ilike 'telefono', '%' + filtroIntance.telefono + '%'
            if (filtroIntance.fax) ilike 'fax', '%' + filtroIntance.fax + '%'
            if (filtroIntance.movil) ilike 'movil', '%' + filtroIntance.movil + '%'
            if (filtroIntance.email) ilike 'email', '%' + filtroIntance.email + '%'
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
            if (filtroIntance.campoOrden) order(filtroIntance.campoOrden, filtroIntance.orden)
        }
    }
}
