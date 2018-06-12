package factura

import cliente.Cliente
import producto.Producto

class Tarifa {

    Double tarifa
    Double tarifadefecto
    static belongsTo = [cliente: Cliente, producto: Producto]

    static constraints = {
        tarifa maxSize:10
        tarifadefecto maxSize:10
    }

    static mapping = {
        table 'Tarifa'
    }

    static namedQueries = {
        filtroListaCount { filtroIntance ->
            if (filtroIntance.tarifa) ge 'cantidad',filtroIntance.cantidad
            if (filtroIntance.tarifadefecto) ge 'cantidad',filtroIntance.cantidad
            if (filtroIntance.cliente) cliente { filtroListaCount(filtroIntance) }
            if (filtroIntance.cliente) producto { filtroListaCount(filtroIntance) }
        }
        filtroLista { filtroIntance ->
            if (filtroIntance.tarifa) ge 'cantidad',filtroIntance.cantidad
            if (filtroIntance.tarifadefecto) ge 'cantidad',filtroIntance.cantidad
            if (filtroIntance.cliente) cliente { filtroListaCount(filtroIntance) }
            if (filtroIntance.cliente) producto { filtroListaCount(filtroIntance) }
            if (filtroIntance.campoOrden) order(filtroIntance.campoOrden, filtroIntance.orden)
        }
    }
}