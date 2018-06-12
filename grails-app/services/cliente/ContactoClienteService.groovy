package cliente

import grails.transaction.Transactional
import service.MainService

@Transactional
class ContactoClienteService extends MainService {

    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['apellidos'] = null
        filtro['nombre'] = null
        filtro['posicion'] = null
        filtro['telefono'] = null
        filtro['fax'] = null
        filtro['movil'] = null
        filtro['email'] = null
        filtro['descripcion'] = null
        filtro['campoOrden'] = 'banknombre'
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def apellidos = params?.filtro['apellidos']
        def nombre = params?.filtro['nombre']
        def posicion = params?.filtro['posicion']
        def telefono = params?.filtro['telefono']
        def fax = params?.filtro['fax']
        def movil = params?.filtro['movil']
        def email = params?.filtro['email']
        def descripcion = params?.filtro['descripcion']
        filtro['apellidos'] = apellidos ?: null
        filtro['nombre'] = nombre ?: null
        filtro['posicion'] = posicion ?: null
        filtro['telefono'] = telefono ?: null
        filtro['fax'] = fax ?: null
        filtro['movil'] = movil ?: null
        filtro['email'] = email ?: null
        filtro['descripcion'] = descripcion ?: null
        return filtro
    }
}
