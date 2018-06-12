package producto

class Producto {
    String nombre
    String codigo
    boolean kg
    boolean congelado
    Double precioventa
    Double tarifa
    Date fechaTarifa
    String descripcion

    static constraints = {
        nombre maxSize: 75
        codigo maxSize: 15
        precioventa maxSize: 10
        tarifa maxSize: 10
        descripcion nullable: true, maxSize: 500
    }

    static mapping = {
        table 'producto'
    }

    static namedQueries = {
        filtroListaCount { filtroIntance ->
            if (filtroIntance.nombre) ilike 'nombre', '%' + filtroIntance.nombre + '%'
            if (filtroIntance.codigo) ilike 'codigo', '%' + filtroIntance.codigo + '%'
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
            if (filtroIntance.kg) eq 'kg', filtroIntance.kg
            if (filtroIntance.congelado) eq 'congelado', filtroIntance.congelado
            if (filtroIntance.precioventa) ge 'precioventa', filtroIntance.precioventa
            if (filtroIntance.tarifa) ge 'tarifa', filtroIntance.tarifa
            if (filtroIntance.fechaTarifa) ge 'fechaTarifa', filtroIntance.fechaTarifa
            if (filtroIntance.dependencias) dependencias { filtroListaCount(filtroIntance) }
            if (filtroIntance.caracteristicas) caracteristicas { filtroListaCount(filtroIntance) }
        }
        filtroLista { filtroIntance ->
            if (filtroIntance.nombre) ilike 'nombre', '%' + filtroIntance.nombre + '%'
            if (filtroIntance.codigo) ilike 'codigo', '%' + filtroIntance.codigo + '%'
            if (filtroIntance.descripcion) ilike 'descripcion', '%' + filtroIntance.descripcion + '%'
            if (filtroIntance.kg) eq 'kg', filtroIntance.kg
            if (filtroIntance.congelado) eq 'congelado', filtroIntance.congelado
            if (filtroIntance.precioventa) ge 'precioventa', filtroIntance.precioventa
            if (filtroIntance.tarifa) ge 'tarifa', filtroIntance.tarifa
            if (filtroIntance.fechaTarifa) ge 'fechaTarifa', filtroIntance.fechaTarifa
            if (filtroIntance.dependencias) dependencias { filtroListaCount(filtroIntance) }
            if (filtroIntance.caracteristicas) caracteristicas { filtroListaCount(filtroIntance) }
            if (filtroIntance.campoOrden) order(filtroIntance.campoOrden, filtroIntance.orden)
        }
    }


    @Override
    public String toString() {
        return nombre
    }
}
