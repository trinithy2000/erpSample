package cliente

import grails.transaction.Transactional

import service.MainService


@Transactional
class BancoClienteService extends MainService {

    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['banknombre'] = null
        filtro['bankent'] = null
        filtro['bankcuenta'] = null
        filtro['bankcont'] = null
        filtro['bankiban'] = null
        filtro['cliente'] = null
        filtro['campoOrden'] = 'bankent'
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def banknombre = params?.filtro['banknombre']
        def bankent = params?.filtro['bankent']
        def bankcuenta = params?.filtro['bankcuenta']
        def bankcont = params?.filtro['bankcont']
        def bankiban = params?.filtro['bankiban']
        def cliente = params?.filtro['cliente']
        def descripcion = params?.filtro['descripcionFiltro']
        filtro['banknombre'] = banknombre ?: null
        filtro['bankent'] = bankent ?: null
        filtro['bankcuenta'] = bankcuenta ?: null
        filtro['bankcont'] = bankcont ?: null
        filtro['bankiban'] = bankiban ?: null
        filtro['cliente'] = cliente ?: null
        return filtro
    }
}