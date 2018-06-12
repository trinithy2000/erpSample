package factura

import cliente.Cliente
import pedido.Pedido

class Factura {

    String referencia
    String descripcion
    Date fechaFactura

    static belongsTo = [cliente: Cliente, pedido: Pedido]

    static constraints = {
        referencia maxSize: 20
        descripcion nullable: true, maxSize: 500
    }

    static mapping = {
        table 'Factura'
    }

    static namedQueries = {
        filtroListaCount { filtroIntance ->
            if (filtroIntance.referencia) ilike 'referencia', '%' + filtroIntance.referencia + '%'
            if (filtroIntance.fechaFactura) ge 'fechaFactura', filtroIntance.fechaFactura
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
            if (filtroIntance.cliente) cliente { filtroListaCount(filtroIntance) }
            if (filtroIntance.pedido) pedido { filtroListaCount(filtroIntance) }
        }
        filtroLista { filtroIntance ->
            if (filtroIntance.referencia) ilike 'referencia', '%' + filtroIntance.referencia + '%'
            if (filtroIntance.fechaFactura) ge 'fechaFactura', filtroIntance.fechaFactura
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
            if (filtroIntance.cliente) cliente { filtroListaCount(filtroIntance) }
            if (filtroIntance.pedido) pedido { filtroListaCount(filtroIntance) }
            if (filtroIntance.campoOrden) order(filtroIntance.campoOrden, filtroIntance.orden)
        }
    }
}