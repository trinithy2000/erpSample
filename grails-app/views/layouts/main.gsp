<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title><g:layoutTitle default="Grails"/></title>
    <asset:javascript src="application.js"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="jquery-ui.css"/>
    <g:layoutHead/>
</head>
<body>
<div class="page">
    <div class="main container">
        <div class="header">
            <div class="header-bottom">
                <h1>Grupo <span>Coase</span></h1>
                <h2><i>Nuestro objetivo la calidad ante todo. Nuestro deseo tu felicidad.</i></h2></div>
            </div>
        <div class="nav">
            <ul class="menu">
                <li><g:link class="active" controller="cliente" action="list">Clientes</g:link>
                    <ul>
                        <li><g:link controller="bancoCliente" action="list">Entidades Bancarias</g:link></li>
                        <li><g:link controller="contactoCliente" action="list">Contactos</g:link></li>
                        <li><g:link controller="direccionCliente" action="list">Direcciones</g:link></li>
                    </ul>
                </li>
                <li><g:link controller="pedido" action="list">Pedidos</g:link>
                    <ul>
                        <li><g:link controller="pedidoHistorico" action="list">Historicos pedidos</g:link></li>
                        <li><g:link controller="productosPedido" action="list">Productos pedido</g:link></li>
                        <li><g:link controller="productosPedidoHistorico" action="list">Productos Historico</g:link></li>
                    </ul>
                </li>
                <li><g:link controller="producto" action="list">Productos</g:link></li>
                <li><g:link controller="factura" action="list">Facturas</g:link>
                    <ul>
                        <li><g:link controller="tarifa" action="list">Tarifas</g:link></li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="content"><g:layoutBody/></div>
    <div class="footer"></div>
    <asset:javascript src="application.js"/>
</body>
</html>
