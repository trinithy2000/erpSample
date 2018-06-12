package cliente

import grails.transaction.Transactional
import service.MainService

@Transactional
class DireccionClienteService extends MainService {

    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['numero'] = null
        filtro['calle'] = null
        filtro['zip'] = null
        filtro['provincia'] = null
        filtro['tipo'] = null
        filtro['descripcion'] = null
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def numero = params?.filtro['numero']
        def calle = params?.filtro['calle']
        def zip = params?.filtro['zip']
        def provincia = params?.filtro['provincia']
        def tipo = params?.filtro['tipo']
        def descripcion = params?.filtro['descripcion']
        filtro['numero'] = numero ?: null
        filtro['calle'] = calle ?: null
        filtro['zip'] = zip ?: null
        filtro['provincia'] = provincia ?: null
        filtro['tipo'] = tipo ?: null
        filtro['descripcion'] = descripcion ?: null
        return filtro
    }
}

