package factura

import cliente.Cliente
import org.springframework.transaction.annotation.Transactional;
import pedido.Pedido
import service.MainService

@Transactional
class FacturaService extends MainService {

    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['referencia'] = null
        filtro['descripcion'] = null
        filtro['fechaFactura'] = null
        filtro['cliente'] = null
        filtro['pedido'] = null
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def referencia = params?.filtro['referencia']
        def descripcion = params?.filtro['descripcion']
        def fechaFactura = params?.filtro['fechaFactura']
        def cliente = Cliente.get(params?.filtro?.cliente?.toLong())
        def pedido = Pedido.get(params?.filtro?.pedido?.toLong())
        filtro['referencia'] = referencia ?: null
        filtro['descripcion'] = descripcion ?: null
        filtro['fechaFactura'] = fechaFactura ?: null
        filtro['cliente'] = cliente ?: null
        filtro['pedido'] = pedido ?: null
        return filtro
    }
}


