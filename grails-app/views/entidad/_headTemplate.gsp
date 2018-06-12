<g:set var="view" value="${view?:params['view']}" />
<g:set var="plural" value="${'list'!=view?'':'.plural'}" />

<head>
	<meta name="layout" content="main">
	<title><g:message code="default.${view}.label" args="[message(code: entity + plural + '.label')]" /></title>
</head>
