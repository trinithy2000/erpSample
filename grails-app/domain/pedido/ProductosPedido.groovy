package pedido
import producto.Producto

class ProductosPedido  {

	Double cantidad
    Integer unidades
	Producto producto
	String observaciones

	static belongsTo = [pedido:Pedido]

	static constraints = {
		cantidad maxSize:10
		observaciones maxSize: 500
	}

	static mapping = {
		table 'productos_pedido'
	}

	static namedQueries = {
		filtroListaCount { filtroIntance ->
			if (filtroIntance.cantidad) ge 'cantidad',filtroIntance.cantidad
			if (filtroIntance.unidades) ge 'unidades', filtroIntance.unidades
			if (filtroIntance.producto) producto {filtroListaCount(filtroIntance)}
		}
		filtroLista { filtroIntance ->
			if (filtroIntance.cantidad) ge 'cantidad',filtroIntance.cantidad
			if (filtroIntance.unidades) ge 'unidades', filtroIntance.unidades
			if (filtroIntance.producto) producto {filtroListaCount(filtroIntance)}
			if (filtroIntance.campoOrden) order(filtroIntance.campoOrden, filtroIntance.orden)
		}
	}
}
