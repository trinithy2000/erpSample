package service

abstract class MainService {
	boolean transactional = true
	def messageSource
	def filtro

	def inicializarFiltro(){
		filtro=[:]
		filtro["orden"]='asc'
		return filtro
	}
	
	def establecerFiltro(params){
		filtro=[:]
		return filtro
	}
}
