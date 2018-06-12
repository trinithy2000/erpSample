// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.2.0.min
//= require bootstrap
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
    (function ($) {
        $(document).ajaxStart(function () {
            $('#spinner').fadeIn();
        }).ajaxStop(function () {
            $('#spinner').fadeOut();
        });
    })(jQuery);
}

function recargarPagina(contenedor) {
    handleToggle(contenedor)
}

function handleToggle(contenedor) {
    contenedor.find(".toggle.head").each(function () {
        initToggle($(this))
    })
}

function init() {
    recargarPagina($("#contenedorPrincipal"))
}

function initToggle(elem) {
    if (!elem.hasClass("init")) {
        elem.addClass("init");
        elem.click(function (event) {
            if (event.target.nodeName.toUpperCase() != "A"
                || !$(this).next().is(":visible")) {
                showRegion($(this))
            }
        })
    }
    return true;
}

function showRegion(toggleHead) {
    toggleHead.next().toggle();
    toggleHead.toggleClass('open')
}

$(function () {
    init()
});

var ventana = {
    init: function (attrs, param) {

       jQuery("#" + attrs[0]).dialog({
            title: "" + attrs[2],
            width: 750,
            height: 'auto',
            position: {my:'center'},
            modal: true,
            resizable: false,
            minHeight: 360,
            buttons: {
                Buscar: function () {
                    window[attrs[1]](param);// ejecutamos metodo metod
                },
                Cerrar: function () {
                    limpiarDialogo();
                    $(this).dialog("destroy");
                }
            },
            close: function (event, ui) {
                limpiarDialogo();
                $(this).dialog("destroy");
            },

        }).height('auto')
    }
};

function buscarClientes(param) {
    var value = jQuery('#' + param[0]).val();
    jQuery.ajax({
        type: 'POST',
        data: 'nombre=' + value,
        url: '/cliente/ajx_filtrar_clientes',
        success: function (data, textStatus) {
            jQuery('#listaResultadoCliente').html(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        }
    });
}


function limpiarDialogo() {
    var out = "";
    var inn = jQuery('#listaResultadoCliente').html();
    if (inn != null) {
        var index = inn.indexOf("<tbody>");
        if (index != -1) {
            out = inn.substring(0, index);
        } else {
            out = inn;
        }
        jQuery('#listaResultadoCliente').html(out + '</table>');
    }
    jQuery('.limpiarImp').val('');
}

function copiaValor(attrs) {
    jQuery('#nombreCliente').val(attrs[1]);
    jQuery('#clienteId').val(attrs[2]);
    limpiarDialogo();
    $("#" + attrs[0]).dialog('close');
}

jQuery(document).ready(function () {
    jQuery('.Numeric').bind('keydown', function (e) {
        if (e.which == 8 || e.which == 46 || e.which == 37 || e.which == 39) {
            return true;
        }
        else if ((e.which >= 48 && e.which <= 57) || (e.which >= 96 && e.which <= 105)) {
            return true;
        }
        return false;
    });
    jQuery('input').focus(function () {
        jQuery(this).select();
    });
});