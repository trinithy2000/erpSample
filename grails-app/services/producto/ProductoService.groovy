package producto

import service.MainService
import grails.transaction.Transactional

@Transactional
class ProductoService extends MainService {

    def inicializarFiltro() {
        filtro = super.inicializarFiltro()
        filtro['nombre'] = null
        filtro['codigo'] = null
        filtro['kg'] = null
        filtro['congelado'] = null
        filtro['precioventa'] = null
        filtro['tarifa'] = null
        filtro['fechaTarifa'] = null
        filtro['descripcion'] = null
        filtro['dependencias'] = null
        filtro['caracteristicas'] = null
        return filtro
    }

    def establecerFiltro(params) {
        filtro = super.establecerFiltro(params)
        def nombre = params?.filtro['nombre']
        def codigo = params?.filtro['codigo']
        def kg = params?.filtro['kg']
        def congelado = params?.filtro['congelado']
        def precioventa = params?.filtro['precioventa']
        def tarifa = params?.filtro['tarifa']
        def fechaTarifa = params?.filtro['fechaTarifa']
        def descripcion = params?.filtro['descripcion']
        def dependencias = Producto.get(params?.filtro?.dependencias?.toLong())
        def caracteristicas = CaracteristicasProducto.get(params?.filtro?.caracteristicas?.toLong())
        filtro['nombre'] = nombre ?: null
        filtro['codigo'] = codigo ?: null
        filtro['kg'] = kg ?: null
        filtro['congelado'] = congelado ?: null
        filtro['precioventa'] = precioventa ?: nullv
        filtro['tarifa'] = tarifa ?: null
        filtro['fechaTarifa'] = fechaTarifa ?: null
        filtro['descripcion'] = descripcion ?: null
        filtro['dependencias'] = dependencias ?: null
        filtro['caracteristicas'] = caracteristicas ?: null
        return filtro
    }
}