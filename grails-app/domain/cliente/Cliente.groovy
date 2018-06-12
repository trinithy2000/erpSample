package cliente

import pedido.Pedido

class Cliente {

    String nombre
    String telefono
    String fax
    String email
    String web
    String descripcion

    static hasMany = [contactos  : ContactoCliente,
                      bancos     : BancoCliente,
                      direcciones: DireccionCliente,
                      pedidos    : Pedido]

    static constraints = {
        nombre nullable: true, maxSize: 150
        telefono nullable: true, maxSize: 30
        fax nullable: true, maxSize: 30
        email nullable: true, maxSize: 50
        web nullable: true, maxSize: 150
        descripcion nullable: true, maxSize: 500
        contactos nullable: true
        bancos nullable: true
        direcciones nullable: true
        pedidos nullable: true
    }

    static namedQueries = {
        filtroListaCount { filtroIntance ->
            if (filtroIntance.nombre) ilike 'nombre', '%' + filtroIntance.nombre + '%'
            if (filtroIntance.telefono) ilike 'telefono', '%' + filtroIntance.telefono + '%'
            if (filtroIntance.fax) ilike 'fax', '%' + filtroIntance.fax + '%'
            if (filtroIntance.email) ilike 'email', '%' + filtroIntance.email + '%'
            if (filtroIntance.web) ilike 'web', '%' + filtroIntance.web + '%'
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
        }
        filtroLista { filtroIntance ->
            if (filtroIntance.nombre) ilike 'nombre', '%' + filtroIntance.nombre + '%'
            if (filtroIntance.telefono) ilike 'telefono', '%' + filtroIntance.telefono + '%'
            if (filtroIntance.fax) ilike 'fax', '%' + filtroIntance.fax + '%'
            if (filtroIntance.email) ilike 'email', '%' + filtroIntance.email + '%'
            if (filtroIntance.web) ilike 'web', '%' + filtroIntance.web + '%'
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
            if (filtroIntance.campoOrden) order(filtroIntance.campoOrden, filtroIntance.orden)
        }
    }

    static mapping = {
        table 'cliente'
    }


    @Override
    String toString() {
        return nombre
    }
}
