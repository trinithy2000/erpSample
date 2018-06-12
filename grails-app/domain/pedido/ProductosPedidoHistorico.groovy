package pedido

import producto.Producto

class ProductosPedidoHistorico {

    Double cantidadAnyo
    Integer unidadesAnyo
    Producto producto

    static belongsTo = [pedidoHistorico:PedidoHistorico]

    static constraints = {
        cantidadAnyo maxSize: 10
        unidadesAnyo maxSize: 10
    }

    static mapping = {
        table 'productos_pedido_historico'
    }

    static namedQueries = {
        filtroListaCount { filtroIntance ->
            if (filtroIntance.cantidadAnyo) ge 'cantidadAnyo',filtroIntance.cantidadAnyo
            if (filtroIntance.unidadesAnyo) ge 'unidadesAnyo', filtroIntance.unidadesAnyo
            if (filtroIntance.producto) producto {filtroListaCount(filtroIntance)}
        }
        filtroLista { filtroIntance ->
            if (filtroIntance.cantidadAnyo) ge 'cantidadAnyo',filtroIntance.cantidadAnyo
            if (filtroIntance.unidadesAnyo) ge 'unidadesAnyo', filtroIntance.unidadesAnyo
            if (filtroIntance.producto) producto {filtroListaCount(filtroIntance)}
            if (filtroIntance.campoOrden) order(filtroIntance.campoOrden, filtroIntance.orden)
        }
    }
}
