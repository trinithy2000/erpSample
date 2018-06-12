<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.awt.List" %>

<g:set var="ownerEntity" value="${ownerEntity ?: params['ownerEntity']}"/>
<g:set var="entityChild" value="${entityChild ?: [params?.entityChild]?.flatten()}"/>

<div class="list">
    <table>
        <thead>
        <tr>
            <g:if test="${!!ownerEntity}">
                <g:sortableColumn property="${ownerEntity}"
                                  title="${message(code: ownerEntity + '.label', default: ownerEntity)}"/>
            </g:if>
            <g:if test="${!!entityChild}">
                <g:if test="${entityChild instanceof Collection}">
                    <g:each in="${entityChild}" var="child">
                        <g:sortableColumn property="${child}"
                                          title="${message(code: entity + '.' + child + '.label', default: child)}"/>
                    </g:each>
                </g:if>
                <g:else>
                    <g:sortableColumn property="${entityChild}"
                                      title="${message(code: entity + '.' + entityChild + '.label', default: entityChild)}"/>
                </g:else>
            </g:if>
            <g:if test="${descHabilitada}">
                <g:sortableColumn property="descripcion"
                                  title="${message(code: 'main.descripcion.label', default: 'Descripcion')}"/>
            </g:if>
        </tr>
        </thead>
        <tbody>
        <g:each in="${instanceList}" status="i" var="instance">
            <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                <g:if test="${!!ownerEntity}">
                    <td><g:link action="show" id="${instance[ownerEntity]?.id}"
                                controller="${ownerEntity}"><g:fieldValue bean="${instance}"
                                                                          field="${ownerEntity}"/></g:link></td>
                </g:if>
                <g:if test="${!!entityChild}">
                    <g:if test="${entityChild instanceof Collection}">
                        <g:each in="${entityChild}" var="child">
                            <td><g:link action="show" id="${instance?.id}">
                                <g:if test="${instance.getAt(child) instanceof Timestamp || instance.getAt(child) instanceof Date}">
                                    <g:formatDate date="${instance?.getAt(child)}" format="dd-MM-yyyy" />
                                </g:if>
                                <g:elseif test="${instance.getAt(child) instanceof Integer}">
                                    <g:formatNumber number="${instance?.getAt(child)}" format="0"/>
                                </g:elseif>
                                <g:else><g:fieldValue bean="${instance}" field="${child}"/></g:else>
                            </g:link></td>
                        </g:each>
                    </g:if>
                    <g:else>
                        <td><g:link action="show" id="${instance?.id}">
                            <g:if test="${instance.getAt(entityChild) instanceof Timestamp || instance.getAt(child) instanceof Date}">
                                <g:formatDate date="${instance?.getAt(entityChild)}" format="dd-MM-yyyy"/>
                            </g:if>
                            <g:elseif test="${instance.getAt(child) instanceof Integer}">
                                <g:formatNumber number="${instance?.getAt(child)}" format="0"/>
                            </g:elseif>
                            <g:else><g:fieldValue bean="${instance}" field="${entityChild}"/></g:else></g:link></td>
                    </g:else>
                </g:if>
                <g:if test="${descHabilitada}">
                    <td><g:link action="show"
                                id="${instance.id}">${fieldValue(bean: instance, field: "descripcion")}</g:link></td>
                </g:if>
                <g:render template="/general/botonesListaSimple" model="['instance': instance]"/>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

<div class="paginateButtons"><g:paginate total="${instanceTotal ?: 0}" action="list"/></div>

