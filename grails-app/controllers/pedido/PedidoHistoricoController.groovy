package pedido

import controller.MainController

class PedidoHistoricoController extends MainController {


    def pedidoHistoricoService

    def index() 		{ super.doIndex() 			  }
    def list() 			{ super.doList() 			  }
    def create() 		{ super.doCreate() 			  }
    def save() 			{ super.doSave()  			  }
    def show() 			{ super.doShow()  			  }
    def edit() 			{ super.doEdit()  			  }
    def update() 		{ super.doUpdate()  		  }
    def delete() 		{ super.doDelete()    		  }
    def limpiarFiltro() { super.doLimpiarFiltro()     }
    def ajx_filtrar()	{ super.doAjx_filtrar()       }
	def getService() 	{ pedidoHistoricoService   	  }
}
