package controller

import grails.util.GrailsNameUtils
import grails.validation.ValidationErrors

import static org.springframework.http.HttpStatus.NOT_FOUND

abstract class MainController {

    static allowedMethods = [create: 'GET', save: 'POST', show: 'GET', edit: 'GET',
                             update: ['PUT', 'POST'], patch: 'PATCH', delete: ['GET', 'DELETE']]
    def grailsApplication
    def instance
    def instanceList
    def instanceTotal
    def controladorVolver
    def accionVolver
    def idVolver
    def entity
    def clazz
    def sort

    private offset

    def doBefore() {
        setClazz(getDomainClass())
        setEntity(GrailsNameUtils.getPropertyName(clazz))
        offset = null
    }

    private doIndex() {
        redirect(action: "list", params: params)
    }

    private doList() {
        //offset
        doBefore()
        def entidad = clazz
        if (entidad) {
            instanceTotal = entidad?.count()
            params.max = Math.min(params.max ? params.int('max') : 10, 100)

            if (params.offset) {
                offset = params.offset
            } else if (instanceTotal > offset) {
                params.offset = offset
            }

            if (params.sort || !sort)
                instanceList = entidad.list(params)
            else
                instanceList = entidad.list(max: params?.max, offset: params?.offset, sort: sort[0], order: sort[1])
        }

        render(view: 'list', model: mapaVariables(), params: params)
    }

    private doListFiltro() {
        if (!session[entity + 'Filtro'])
            session[entity + 'Filtro'] = getService()?.inicializarFiltro()

        instance = session[entity + 'Filtro']

        if (params.sort) instance["campoOrden"] = params.sort
        if (params.order) instance["orden"] = params.order

        //offset
        doCheckOffset()

        instanceList = clazz.filtroLista(instance).list(max: 10, offset: params.offset)
        instanceTotal = clazz.filtroListaCount(instance).count()
    }

    private doCreate() {
        instance = getDomainInstance(params)
        listasCombos()
        render(view: 'create', model: mapaVariables(), params: params)
    }

    private doSave(property = "descripcion", otro = null) {
        doBefore()
        instance = getDomainInstance(params)

        def prop = instance.hasProperty(property) ? instance[property] : instance.toString()
        def guardado = instanceSave()
        if (guardado) {
            flashMessage("created", prop.toString())
            params['id'] = instance.id
            params['guardado'] = true
            if (!otro) redirect(action: "show", params: params)
        } else {
            if (!otro) render(view: 'create', model: mapaVariables(), params: params)
        }
    }

    private doShow() {
        doBefore()
        instance = clazz.get(params.id)
        controladorVolver = params.nombre
        accionVolver = params.volver
        idVolver = params.idVolver

        if (!instance) {
            flashMessage("not.found", params.id.toString())
            redirect(action: "list")
        }
        render(view: 'show', model: mapaVariables(), params: params)
    }

    private doEdit() {
        instance = clazz.get(params.id)
        listasCombos()
        if (!instance) {
            flashMessage("not.found", params.id.toString())
            redirect(action: "list")
        }
        render(view: 'edit', model: mapaVariables(), params: params)
    }

    private doUpdate(property = "descripcion") {
        doBefore()
        instance = clazz.get(params.id)

        def prop = instance.hasProperty(property) ? instance[property] : instance.toString()

        if (instance) {
            if (params.version) {
                def version = params.version.toLong()
                if (instance.version > version) {
                    instance.errors.rejectValue("version", "default.optimistic.locking.failure",
                            [message(code: entity + '.label', default: clazz?.class?.simpleName)] as Object[],
                            "Another user has updated this " + entity + " while you were editing")
                    render(view: "edit", model: mapaVariables(), params: params)
                    return
                }
            }

            instance.properties = params

            if (instanceUpdate()) {
                flashMessage("updated", prop.toString())
                redirect(action: "show", params: [id: instance.id])
            } else {
                render(view: "edit", model: mapaVariables(), params: params)
            }
        } else {
            flashMessage("not.found", params.id.toString())
            redirect(action: "list")
        }
    }

    def doDelete(property = null) {
        doBefore()
        String msg = "not.found"
        instance = clazz.get(params.id)
        controladorVolver = params?.nombre
        accionVolver = params?.volver
        idVolver = params?.idVolver
        def retorno = instance.hasProperty('descripcion') ? instance['descripcion'] : instance.toString()
        def condition = false

        if (instance) {
            property?.each {
                if (!condition)
                    condition = instance[it]
            }

            if (!condition) {
                try {
                    if (instanceDelete()) {
                        msg = "deleted"
                    }
                }
                catch (org.springframework.dao.DataIntegrityViolationException e) {
                    msg = "not.deleted"
                }
            } else msg = "not.deleted.child"
        } else retorno = params.id

        if (!instance.hasErrors()) {
            flashMessage(msg, retorno.toString(), condition)
        } else {
            ValidationErrors errs = instance.errors
            def code = errs.allErrors[0].code
            flash.error = message(code: code)
        }
        if (controladorVolver)
            redirect(controller: controladorVolver, action: accionVolver, id: idVolver, params: params)
        else
            redirect(action: "list", params: params)
    }

    def doActualizarFechaBaja(property = 'descripcion') {
        instance = clazz.get(params.id)
        def prop = instance.hasProperty(property) ? instance[property] : instance.toString()

        if (instance) {
            instance.fechaBaja ? instance.setFechaBaja(null) : instance.setFechaBaja(new Date())
            flash.message = message(code: instance.fechaBaja ? 'default.baja.message' : 'default.activado.message',
                    args: [message(code: entity + '.label', default: clazz?.class?.simpleName), prop.toString()])
            instance.save(flush: true)
        }
        redirect(action: "list")
    }

    void flashMessage(String msg, def retorno, def condition = null) {
        flash.message = message(code: 'default.' + msg + '.message', args: [message(code: entity + '.label', default: clazz?.class?.simpleName), retorno.toString(), condition])
    }

    void flashError(String msg, def retorno, def condition = null) {
        flash.error = message(code: 'default.' + msg + '.message', args: [message(code: entity + '.label', default: clazz?.class?.simpleName), retorno.toString(), condition])
    }

    private getDomainClass() {
        def nombre = GrailsNameUtils.getPropertyNameRepresentation(this.getClass())?.replace('Controller', '')
        grailsApplication?.getArtefactByLogicalPropertyName("Domain", nombre).newInstance().getClass()
    }

    private getDomainInstance(params) {
        def nombre = GrailsNameUtils.getPropertyNameRepresentation(this.getClass())?.replace('Controller', '')
        def newInstance = grailsApplication?.getArtefactByLogicalPropertyName("Domain", nombre).newInstance()
        newInstance.properties = params
        newInstance
    }

    def getDescHabilitada() {
        def nombre = GrailsNameUtils.getPropertyNameRepresentation(this.getClass())?.replace('Controller', '')
        grailsApplication?.getArtefactByLogicalPropertyName("Domain", nombre).hasProperty('descripcion')
    }

    def doLimpiarFiltro() {
        session[entity + 'Filtro'] = getService().inicializarFiltro()
        session[entity + '_offset'] = null
        redirect(action: "list")
    }


    protected Map mapaVariables() {
        return [instance      : instance, entity: entity, instanceTotal: instanceTotal, instanceList: instanceList,
                descHabilitada: getDescHabilitada(), controladorVolver: controladorVolver, accionVolver: accionVolver,
                idVolver      : idVolver]
    }

    protected Boolean instanceSave() { instance.save(flush: true) }

    protected Boolean instanceUpdate() { instanceSave() }

    protected Boolean instanceDelete() {
        instance.delete(flush: true)
        return !instance.hasErrors()
    }

    def listasCombos() {}

    def doAjx_filtrar(String templt = '') {
		
		doBefore()
		instance = getService().establecerFiltro(params)
        session[entity + 'Filtro'] = instance
        session[entity + '_offset'] = null

        instanceList = clazz.filtroLista(instance).list(max: 10, offset: params.offset)
        instanceTotal = clazz.filtroLista(instance).list().size()

        params['descHabilitada'] = getDescHabilitada()

        if (params['entityChild']){
            String child = params['entityChild']
            child =  child.substring(1,child.length()-1).replace(" ","")
            def lista = child.split(",")
            params['entityChild'] =lista
        }

        if (templt)
            render(template: templt, model: mapaVariables(), params: params)
        else
            render(template: "/entidad/template/lista", model: mapaVariables(), params: params)
    }

    def doCheckOffset() {
        if (params.offset) offset = params.offset
        else params.offset = offset
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: entity + '.label', default: entity), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
