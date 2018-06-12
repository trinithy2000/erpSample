package cliente

import controller.MainController

class BancoClienteController extends MainController {

     def bancoClienteService

    def index() 		{ super.doIndex() 			  }
    def save() 			{ super.doSave()  			  }
    def show() 			{ super.doShow()  			  }
    def update() 		{ super.doUpdate()  		  }
    def delete() 		{ super.doDelete()    		  }
    def limpiarFiltro() { super.doLimpiarFiltro()     }
    def ajx_filtrar()	{ super.doAjx_filtrar()       }
	def getService() 	{ bancoClienteService 		  }
	
    def list() {
        doBefore()
        super.doListFiltro()
        render(view: 'list', model: mapaVariables(), params: params)
    }

    def create() {
        listasCombos()

        super.doCreate()
    }

    def edit() {
        listasCombos()
        super.doEdit()
    }

}
