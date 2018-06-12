package factura

import cliente.Cliente
import org.springframework.transaction.annotation.Transactional;
import pedido.Pedido
import producto.Producto
import service.MainService

@Transactional
class TarifaService extends MainService {

    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['tarifa'] = null
        filtro['tarifadefecto'] = null
        filtro['cliente'] = null
        filtro['producto'] = null
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def tarifa = params?.filtro['tarifa']
        def tarifadefecto = params?.filtro['tarifadefecto']
        def cliente = Cliente.get(params?.filtro?.cliente?.toLong())
        def producto = Producto.get(params?.filtro?.producto?.toLong())
        filtro['tarifa'] = tarifa ?: null
        filtro['tarifadefecto'] = tarifadefecto ?: null
        filtro['cliente'] = cliente ?: null
        filtro['producto'] = producto ?: null
        return filtro
    }
}


