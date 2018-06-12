package pedido

import grails.transaction.Transactional
import producto.Producto
import service.MainService

@Transactional
class ProductosPedidoHistoricoService extends MainService {

    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['cantidadAnyo'] = null
        filtro['unidadesAnyo'] = null
        filtro['producto'] = null
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def cantidadAnyo = params?.filtro['cantidadAnyo']
        def unidadesAnyo = params?.filtro['unidadesAnyo']
        def producto = Producto.get(params?.filtro?.producto?.toLong())
        filtro['cantidadAnyo'] = cantidadAnyo ?: null
        filtro['unidadesAnyo'] = unidadesAnyo ?: null
        filtro['producto'] = producto ?: null
        return filtro
    }
}
