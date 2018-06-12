package pedido

import cliente.Cliente
import grails.transaction.Transactional
import service.MainService

@Transactional
class PedidoHistoricoService extends MainService {

    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['anyo'] = null
        filtro['ultimaCompra'] = null
        filtro['cliente'] = null
        filtro['productosPedidoHistorico'] = null
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def anyo = params?.filtro['anyo']
        def ultimaCompra = params?.filtro['ultimaCompra']
        def cliente = Cliente.get(params?.filtro?.cliente?.toLong())
        def productosPedidoHistorico = ProductosPedidoHistorico.get(params?.filtro?.productosPedidoHistorico?.toLong())
        filtro['anyo'] = anyo ?: null
        filtro['ultimaCompra'] = ultimaCompra ?: null
        filtro['cliente'] = cliente ?: null
        filtro['productosPedidoHistorico'] = productosPedidoHistorico ?: null
        return filtro
    }
}
