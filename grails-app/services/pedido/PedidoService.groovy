package pedido

import cliente.Cliente
import grails.transaction.Transactional
import producto.Producto
import service.MainService

@Transactional
class PedidoService extends MainService {

    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['referencia'] = null
        filtro['fechaoferta'] = null
        filtro['fechavalidez'] = null
        filtro['descripcion'] = null
        filtro['cliente'] = null
        filtro['productosPedido'] = null
        filtro['prePedido'] = null
		filtro['nombre'] = null
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def referencia = params?.filtro['referencia']
        def fechaoferta = params?.filtro['fechaoferta']
        def fechavalidez = params?.filtro['fechavalidez']
        def descripcion = params?.filtro['descripcion']
        def cliente = Cliente.get(params?.filtro?.cliente?.toLong())
        def productosPedido = ProductosPedido.get(params?.filtro?.productosPedido?.toLong())
        def prePedido = params?.filtro['prePedido']
		def nombre = params?.filtro['nombre']
        filtro['referencia'] = referencia ?: null
        filtro['fechaoferta'] = fechaoferta ?: null
        filtro['fechavalidez'] = fechavalidez ?: null
        filtro['descripcion'] = descripcion ?: null
        filtro['cliente'] = cliente ?: null
        filtro['productosPedido'] = productosPedido ?: null
        filtro['prePedido'] = prePedido?:null
		filtro['nombre'] = nombre?:null
        return filtro
    }
}
