package pedido

import cliente.Cliente

class Pedido {

    String referencia
    Date fechaoferta
    Date fechavalidez
    String descripcion
    boolean esPrepedido

    static belongsTo = [cliente: Cliente]

    static hasMany = [productosPedido: ProductosPedido]

    static constraints = {
        referencia maxSize: 150
        descripcion maxSize: 500
    }

    static mapping = {
        table 'pedido'
    }

    static namedQueries = {
        filtroListaCount { filtroIntance ->
            if (filtroIntance.referencia) ilike 'referencia', '%' + filtroIntance.referencia + '%'
            if (filtroIntance.fechaoferta) ge 'fechaoferta', filtroIntance.fechaoferta
            if (filtroIntance.fechavalidez) ge 'fechavalidez', filtroIntance.fechavalidez
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
            if (filtroIntance.cliente) cliente { filtroListaCount(filtroIntance) }
            if (filtroIntance.productosPedido) productosPedido { filtroListaCount(filtroIntance) }
            if (filtroIntance.prePedido) eq 'esPrepedido', filtroIntance.prePedido
			if (filtroIntance.nombre) cliente{
				ilike 'nombre', '%' + filtroIntance.nombre + '%'
			}
        }
        filtroLista { filtroIntance ->
            if (filtroIntance.referencia) ilike 'referencia', '%' + filtroIntance.referencia + '%'
            if (filtroIntance.fechaoferta) ge 'fechaoferta', filtroIntance.fechaoferta
            if (filtroIntance.fechavalidez) ge 'fechavalidez', filtroIntance.fechavalidez
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
            if (filtroIntance.cliente) cliente { filtroListaCount(filtroIntance) }
            if (filtroIntance.productosPedido) productosPedido { filtroListaCount(filtroIntance) }
            if (filtroIntance.campoOrden) order(filtroIntance.campoOrden, filtroIntance.orden)
            if (filtroIntance.prePedido) eq 'esPrepedido', filtroIntance.prePedido
			if (filtroIntance.nombre) cliente{
				ilike 'nombre', '%' + filtroIntance.nombre + '%'
			}
        }
    }
}
