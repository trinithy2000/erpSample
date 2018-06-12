package cliente

import controller.MainController

class ClienteController extends MainController {

    def clienteService
    def errCliente
    def clienteList
    def clienteTotal


    def index() 		{ super.doIndex() 			}
    def list() 			{ super.doList() 			}
    def create() 		{ super.doCreate() 			}
    def save() 			{ super.doSave() 			}
    def show() 			{ super.doShow() 			}
    def edit() 			{ super.doEdit() 			}
    def update() 		{ super.doUpdate() 			}
    def delete() 		{ super.doDelete() 			}
    def limpiarFiltro() { super.doLimpiarFiltro() 	}
    def ajx_filtrar() 	{ super.doAjx_filtrar() 	}
	def getService() 	{ clienteService 			}

    def ajx_filtrar_clientes() {
        def filtro = [:]
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        errCliente = new Cliente()
        filtro['nombre'] = params['nombre']
        clienteTotal = Cliente.filtroListaCount(filtro).count()
        filtro['campoOrden'] = 'nombre'
        filtro['orden'] = 'desc'
        clienteList = Cliente.filtroLista(filtro).list(max: 10, offset: params.offset)
        if (!instanceList) {
            errCliente.errors.reject('default.no.find.contrato.message')
        }
        render(template: "/cliente/templates/listaClienteDialog", model: mapaVariables(), params: params)
    }

    protected Map mapaVariables() {
        def mapa = super.mapaVariables()
        mapa.putAll([clienteList: clienteList, clienteTotal: clienteTotal, errCliente: errCliente])
        return mapa
    }
}
