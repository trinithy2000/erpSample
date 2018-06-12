package pedido

import cliente.Cliente

class PedidoHistorico {
    Integer anyo
    Date ultimaCompra
    static belongsTo = [cliente: Cliente]

    static hasMany = [productosPedidoHistorico: ProductosPedidoHistorico]

    static constraints = {
        anyo maxSize: 4
        ultimaCompra nullable: true
    }

    static mapping = {
        table 'pedido_historico'
    }

    static namedQueries = {
        filtroListaCount { filtroIntance ->
            if (filtroIntance.ultimaCompra) ge 'ultimaCompra', filtroIntance.ultimaCompra
            if (filtroIntance.anyo) ge 'anyo', filtroIntance.anyo
            if (filtroIntance.cliente) cliente { filtroListaCount(filtroIntance) }
            if (filtroIntance.productosPedidoHistorico) productosPedidoHistorico { filtroListaCount(filtroIntance) }
        }
        filtroLista { filtroIntance ->
            if (filtroIntance.ultimaCompra) ge 'ultimaCompra', filtroIntance.ultimaCompra
            if (filtroIntance.anyo) ge 'anyo', filtroIntance.anyo
            if (filtroIntance.cliente) cliente { filtroListaCount(filtroIntance) }
            if (filtroIntance.productosPedidoHistorico) productosPedidoHistorico { filtroListaCount(filtroIntance) }
            if (filtroIntance.campoOrden) order(filtroIntance.campoOrden, filtroIntance.orden)
        }
    }
}
