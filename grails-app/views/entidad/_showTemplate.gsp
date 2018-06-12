<%@page import="pedido.ProductosPedido"%>
<%@ page import="java.sql.Timestamp" %>

<g:set var="ownerEntityName" value="${ownerEntityName ?: params['ownerEntityName']}"/>
<g:set var="entityGenre" value="${entityGenre ?: 'masc'}"/>
<g:set var="entityChild" value="${entityChild ?: params['entityChild']}"/>
<g:set var="contieneId" value="${contieneId ?: params['contieneId'] ?: false}"/>
<g:set var="tarifa" value="${tarifa ?: params['tarifa'] ?: false}"/>
<g:set var="noCreate" value="${noCreate ?: params['noCreate'] ?: false}"/>
<g:set var="noEdit" value="${noEdit ?: params['noEdit'] ?: false}"/>
<g:set var="instance" value="${instance ?: params['instance'] ?: false}"/>


<h1><g:message code="default.show.label" args="[message(code: entity + '.label')]"/></h1>

<div id="show-${entity}" class="body" role="main">
    <g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
    <div class="dialog">

        <g:if test="${!!ownerEntityName}">
            <g:if test="${instance[ownerEntityName]}">
                <div class="prop seccion caja">
                    <div class="left name">${message(code: ownerEntityName + '.label', default: ownerEntityName)}:</div>

                    <div class="left value">
                        <g:link controller="${ownerEntityName}" action="show" id="${instance[ownerEntityName]?.id ?: 0}"
                                params="[volver: 'show', nombre: entityName, idVolver: instance.id]">${instance[ownerEntityName]?.encodeAsHTML()}</g:link>
                    </div>
                </div>
            </g:if>
        </g:if>

        <g:if test="${descHabilitada}">
            <g:each in="${ordenIdioma}" var="idioma">
                <g:if test="${fieldValue(bean: instance, field: "descripcion." + idioma)}">
                    <div class="prop seccion caja tittle">
                        <h2 style="text-align: center"><g:message code="${entity+'.label'}" /></h2>
                        <div class="left name">${message(code: 'main.descripcion.' + idioma + '.label', default: 'Descripcion ' + idioma)}:</div>

                        <div class="left value"><g:fieldValue bean="${instance}" field="descripcion.${idioma}"/></div>
                    </div>
                </g:if>
            </g:each>
        </g:if>

        <g:if test="${!!entityChild}">
            <div class="prop seccion caja tittle">
            <h2 style="text-align: center"><g:message code="${entity+'.label'}" /></h2>
            <g:if test="${entityChild instanceof Collection}">
                <g:each in="${entityChild}" var="child">
                    <g:if test="${!!instance[child]}">
                        <div class="prop seccion">
                             <div class="left name">${message(code: entity + '.' + child + '.label', default: child)}:</div>

                            <div class="left value">
                                <g:if test="${contieneId}">
                                    <g:link controller="${child}" action="show" id="${instance[child]?.id ?: 0}"
                                            params="[volver: 'show', nombre: entityName, idVolver: instance.id]">
                                        <g:fieldValue bean="${instance}" field="${subEntityName}"/>
                                    </g:link>
                                </g:if>
                                <g:elseif test="${instance.getAt(child) instanceof Timestamp}">
                                    <g:formatDate date="${instance?.getAt(child)}"/>
                                </g:elseif>
                                <g:elseif test="${instance.getAt(child) instanceof Integer}">
                                    <g:formatNumber number="${instance?.getAt(child)}" format="0"/>
                                </g:elseif>
                                 <g:elseif test="${instance.getAt(child) instanceof Collection}">
                                   	<g:each in="${instance.getAt(child)}" var="elem">                      		                             
                               			 <div class="prop seccion">
                               			 	<div class="left name">${message(code: 'productosPedido.cantidad.label')}:</div>
                               			   	<div class="left value"><g:fieldValue bean="${elem}" field="cantidad"/>;</div>                               			
                               		
                               			 	<div class="left name">${message(code: 'productosPedido.unidades.label')}:</div>
                               			   	<div class="left value"><g:fieldValue bean="${elem}" field="unidades"/>;</div>
                               		
                               			 	<div class="left name">${message(code: 'productosPedido.producto.label')}:</div>
                               			   	<div class="left value"><g:fieldValue bean="${elem}" field="producto"/>;</div>
                               			
                               			 	<div class="left name">Observaciones:</div>
                               			   	<div class="left value"><g:fieldValue bean="${elem}" field="observaciones"/></div>
                               			</div>
                                 	</g:each>
                                </g:elseif>                               
                                <g:else><g:fieldValue bean="${instance}" field="${child}"/></g:else>
                            </div>
                        </div>
                    </g:if>
                </g:each>
            </g:if>
            <g:else>
                <g:if test="${!!instance[entityChild]}">
                    <div class="prop seccion">
                        <div class="left name">${message(code: entity + '.' + entityChild + '.label', default: entityChild)}:</div>

                        <div class="left value">
                            <g:if test="${contieneId}">
                                <g:link controller="${entityChild}" action="show" id="${instance[entityChild]?.id ?: 0}"
                                        params="[volver: 'show', nombre: entityName, idVolver: instance.id]">
                                    <g:fieldValue bean="${instance}" field="${subEntityName}"/>
                                </g:link>
                            </g:if>
                            <g:else><g:fieldValue bean="${instance}" field="${entityChild}"/></g:else>
                        </div>
                    </div>
                </g:if>
            </g:else>
            </div>
        </g:if>
    </div>
</div>

<div class="nav2">
    <g:if test="${controladorVolver}">
        <span class=""><g:link class="boton" controller="${controladorVolver}" action="${accionVolver}"
                                         id="${idVolver}"
                                         params="[open: params?.open, offset: params?.offset]"><g:message
                    code="default.back.label"/></g:link></span>
    </g:if>

    <g:link class="boton" action="list"><g:message code="default.list.label" args="[message(code: entity + '.plural.label')]"/></g:link>
    <g:if test="${!noCreate}">
        <g:if test="${entityGenre == 'fem'}">
            <g:link class="boton" action="create"><g:message code="default.nueva.label" args="[message(code: entity + '.label')]"/></g:link>
        </g:if>
        <g:elseif test="${entityGenre == 'masc'}">
            <g:link class="boton" action="create"><g:message code="default.nuevo.label" args="[message(code: entity + '.label')]"/></g:link>
        </g:elseif>
    </g:if>
    <g:if test="${!noEdit}">
        <g:link class="boton" action="edit" id="${instance.id}"><g:message code="default.button.edit.label" args="[message(code: entity + '.label')]"/></g:link>
    </g:if>
        <g:link class="boton" action="delete" id="${instance?.id}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Está seguro?')}');">
            <g:message code="default.button.delete.label" args="[message(code: entity + '.label')]"/></g:link>
    <g:if test="${instance?.hasProperty('fechaBaja')}">
        <g:link class="boton" action="actualizarFechaBaja" id="${instance?.id}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: '¿Está seguro?')}');">
            ${instance?.fechaBaja ? message(code: 'default.button.activarRegistro.label', default: 'Activar') : message(code: 'default.button.bajaLogica.label', default: 'Baja lógica')}</g:link>
    </g:if>
</div>