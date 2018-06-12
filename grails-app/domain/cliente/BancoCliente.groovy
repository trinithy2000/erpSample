package cliente

class BancoCliente {

    String banknombre
    Integer bankent
    Integer bankcuenta
    Integer bankcont
    String bankiban

    static belongsTo = [cliente: Cliente]

    static constraints = {
        banknombre maxSize: 150
        bankent size: 4..4
        bankcuenta size: 12..12
        bankcont size: 4..4
        bankiban size: 4..4

    }
    static mapping = {
        table 'banco_cliente'
    }

    static namedQueries = {
        filtroListaCount { filtroIsntance ->
            if (filtroIsntance.cliente) cliente { ilike 'nombre', '%' + filtroIsntance.cliente + '%' }
            if (filtroIsntance.banknombre) ilike 'banknombre', '%' + filtroIsntance.banknombre + '%'
            if (filtroIsntance.bankent) ilike 'bankent', '%' + filtroIsntance.bankent + '%'
            if (filtroIsntance.bankcuenta) ilike 'bankcuenta', '%' + filtroIsntance.bankcuenta + '%'
            if (filtroIsntance.bankcont) ilike 'bankcont', '%' + filtroIsntance.bankcont + '%'
            if (filtroIsntance.bankiban) ilike 'bankiban', '%' + filtroIsntance.bankiban + '%'
        }
        filtroLista { filtroIsntance ->
            if (filtroIsntance.cliente) cliente { ilike 'nombre', '%' + filtroIsntance.cliente + '%' }
            if (filtroIsntance.banknombre) ilike 'banknombre', '%' + filtroIsntance.banknombre + '%'
            if (filtroIsntance.bankent) ilike 'bankent', '%' + filtroIsntance.bankent + '%'
            if (filtroIsntance.bankcuenta) ilike 'bankcuenta', '%' + filtroIsntance.bankcuenta + '%'
            if (filtroIsntance.bankcont) ilike 'bankcont', '%' + filtroIsntance.bankcont + '%'
            if (filtroIsntance.bankiban) ilike 'bankiban', '%' + filtroIsntance.bankiban + '%'
            if (filtroIsntance.campoOrden) order(filtroIsntance.campoOrden, filtroIsntance.orden)

        }


    }
}