$(document).ready (function (){
    vg.updateDatePicker();
});

var vg = (function () {
    vg = {};

    var dateFormat = "dd/mm/yy";

    function dateFormatError(nameStructDate, language, idError) {

        var message = ((language === 'eu')?"Data desegokia: ":"Fecha erronea: ") + nameStructDate;
        var buttonText = ((language === 'eu')?"Onartu":"Aceptar");
        $('#' + idError).html(message);
        $('#' + idError).dialog({
            autoOpen: true,
            modal: true,
            resizable: false,
            buttons:
            [
                {
                    text: buttonText,
                    click: function() { $(this).dialog("close"); }
                }
            ]
        });
    }
    function clearDate(id, selectDay, selectMonth, selectYear, datepicker, dateOptional){
        var date;
        if (dateOptional) {
            $(selectYear).val('');
            $(selectMonth).val('');
            $(selectDay).val('');
        }else{
            date = new Date ($(selectYear).val(),
                $(selectMonth).val()-1,
                $(selectDay).val());
        }
        dateValue = $.datepicker.formatDate(dateFormat, date);
        $('#' + id).val(dateValue);
    }
    function updateDatePicker () {

        $("input[value='date.struct']:hidden").each(function() {

            var language = "";
            if (typeof paramsLang === "undefined"){
                language = "es";
            }else{
            	language = paramsLang.substring(0,2);
			}
            dateFormat = "dd/mm/yy";
            if (language == "eu"){
                dateFormat = "yy/mm/dd";
            }

            var nameStructDate = $(this).attr('name');

        // Create JQuery Friendly ID
        var id = "DP" + nameStructDate.replace(".", "_").replace("[", "_").replace("]", "_") + "_input";



        if ($('#'+id).length === 0) {



            // Find the Select Elements
            var selectDay= $(this).nextAll("select:eq(0)").hide();
            var selectMonth = $(this).nextAll("select:eq(1)").hide();
            var selectYear = $(this).nextAll("select:eq(2)").hide();

            // Get the Values
            var dateDay= $(selectDay).val();
            var dateMonth = $(selectMonth).val();
            var dateYear = $(selectYear).val();


            // Calculate the Current Input Value
            var val = "";
            if (dateDay !== "" && dateYear !== "" && dateMonth !== "") {
            // If there is a date in the Selects then use it otherwise it's empty
            var date = new Date (dateYear, dateMonth-1, dateDay);
            val = $.datepicker.formatDate(dateFormat, date);
        }



            // Create element
            var template = "<input type='text' name='"+ id +"' id='"+ id +"' value='"+ val +"' size=8 />";

            if ($(this).parent(".datePickerCalenderView").size()) {
                template = "<div id='"+ id +"'/>";
            }



            $(this).before(template);
            var idErrorMessage = id + 'dateErrorMessage';
            $(this).before('<div id="' + idErrorMessage +'">Error en la fecha</div>');
            $('#' + idErrorMessage).hide();
            var displayWidget = $('#' + id );

            var yearOptions = document.getElementById(nameStructDate + "_year").options;
            var yearLow = yearOptions[0].text;
            var dateOptional = yearOptions[0].value === '';

            if (dateOptional) {
                yearLow = yearOptions[1].text;
            }
            var yearTop = yearOptions[yearOptions.length -1].text;
            var  yearRange= yearLow + ':' + yearTop;

//            alert("yearRange antes de la ñapa: "+yearRange);
            if (yearLow>yearTop){
        		var yearLowMemo = yearLow;
        		yearLow = yearTop;
        		yearTop = yearLowMemo
        		yearRange= yearLow + ':' + yearTop;
        	}
//            alert("yearRange despues de la ñapa "+yearRange);



            displayWidget.blur(function() {
                var date;
                //alert($(selectDay).val());
                try {
                    date = $.datepicker.parseDate(dateFormat, $(this).val());
                } catch (error) {
                	var mensajeError = nameStructDate
                	if (typeof(window["mensajeError" + nameStructDate]) != "undefined"){
                		mensajeError = window["mensajeError" + nameStructDate];
                	}
                	dateFormatError(mensajeError, language, idErrorMessage);
                    clearDate(id, selectDay, selectMonth, selectYear,this, dateOptional);
                    date = null;
                    this.focus();
                    this.select();
                }

                if (date === null) {
                    clearDate(id, selectDay, selectMonth, selectYear,this, dateOptional);
                }
                else {
                    if (date.getFullYear()> yearTop || date.getFullYear()<yearLow){
                        dateFormatError(nameStructDate, language, idErrorMessage);
                        clearDate(id, selectDay, selectMonth, selectYear,this, dateOptional);
                        this.focus();
                        this.select();
                    }else{
                        /*$(selectDay).val(date.getDate());
                        $(selectMonth).val(date.getMonth()+1);
                        $(selectYear).val(date.getFullYear());*/
                        $('input[name$="' + this.name + '"]').nextAll("select:eq(0)").val(date.getDate());
                        $('input[name$="' + this.name + '"]').nextAll("select:eq(1)").val(date.getMonth()+1);
                        $('input[name$="' + this.name + '"]').nextAll("select:eq(2)").val(date.getFullYear());
                    }
                }
            }).keydown(function(event) {
                    // Show popup on Down Arrow
                    if (event.keyCode == 40) {
                        displayWidget.datepicker("show");
                    }
                });
            $.datepicker.setDefaults(
            {
                changeMonth: true,
                changeYear: true,
                dateFormat: dateFormat,
                constrainInput: true,
                showButtonPanel: true,
                showWeeks: true,
                showOn: 'button',
                onSelect: function(dateText, inst) {
                    if (inst === null) {
                        $(selectDay).val("");
                        $(selectMonth).val("");
                        $(selectYear).val("");
                    }
                    else {
                        /*$(selectDay).val(String(inst.selectedDay));
                        $(selectMonth).val(String(inst.selectedMonth+1));
                        $(selectYear).val(String(inst.selectedYear));*/
                        $('input[name$="' + this.name + '"]').nextAll("select:eq(0)").val(inst.selectedDay);
                        $('input[name$="' + this.name + '"]').nextAll("select:eq(1)").val(inst.selectedMonth +1);
                        $('input[name$="' + this.name + '"]').nextAll("select:eq(2)").val(inst.selectedYear);
                    }
                    $('input[name$="' + this.name + '"]').trigger("change"); //lanzamos el evento onchange sobre el input que creamos en este js
                }
            }
            );

            $.datepicker.regional['es'] = {
                closeText: 'Cerrar',
                prevText: '< Ant',
                nextText: 'Sig >',
                currentText: 'Hoy',
                monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
                dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
                dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
                dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
                weekHeader: 'Sm',
                dateFormat: 'dd/mm/yy',
                firstDay: 1,
                isRTL: false,
                showMonthAfterYear: false,
                yearSuffix: ''
            };

            $.datepicker.setDefaults($.datepicker.regional[language]);
            displayWidget.datepicker({
                yearRange: yearRange,
                minDate: new Date(yearLow,  0, 1),
                maxDate: new Date(yearTop, 11,31)});
        }
    });
}

vg.updateDatePicker = updateDatePicker;
return vg;

}());

