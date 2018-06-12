package pedido

import cliente.Cliente
import grails.transaction.Transactional
import producto.Producto
import service.MainService

@Transactional
class ProductosPedidoService extends MainService {

    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['cantidad'] = null
        filtro['unidades'] = null
        filtro['producto'] = null
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def cantidad = params?.filtro['cantidad']
        def unidades = params?.filtro['unidades']
        def producto = Producto.get(params?.filtro?.producto?.toLong())
        filtro['cantidad'] = cantidad ?: null
        filtro['unidades'] = unidades ?: null
        filtro['producto'] = producto ?: null
        return filtro
    }
}

