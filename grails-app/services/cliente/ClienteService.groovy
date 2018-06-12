package cliente

import cliente.BancoCliente
import cliente.Cliente
import cliente.DireccionCliente
import grails.transaction.Transactional
import groovy.json.JsonSlurper
import pedido.Pedido
import pedido.PedidoHistorico
import pedido.ProductosPedido
import pedido.ProductosPedidoHistorico
import producto.Producto
import service.MainService
import util.Utilidades

import java.text.SimpleDateFormat

@Transactional
class ClienteService extends MainService {


    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['nombre'] = null
        filtro['telefono'] = null
        filtro['fax'] = null
        filtro['email'] = null
        filtro['web'] = null
        filtro['descripcion'] = null
        filtro['campoOrden'] = 'nombre'
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def nombre = params?.filtro['nombre']
        def telefono = params?.filtro['telefono']
        def fax = params?.filtro['fax']
        def email = params?.filtro['email']
        def web = params?.filtro['web']
        def descripcion = params?.filtro['descripcion']
        filtro['nombre'] = nombre ?: null
        filtro['telefono'] = telefono ?: null
        filtro['fax'] = fax ?: null
        filtro['email'] = email ?: null
        filtro['web'] = web ?: null
        filtro['descripcion'] = descripcion ?: null
        return filtro
    }
}