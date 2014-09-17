//= require jquery
//= require js/jquery.min
//= require js/jquery.debouncedresize.min
//= require js/jquery.actual.min
//= require js/jquery.cookie.min
//= require bootstrap/js/bootstrap.min
//= require lib/qtip2/jquery.qtip.min
//= require lib/jBreadcrumbs/js/jquery.jBreadCrumb.1.1.min
//= require lib/colorbox/jquery.colorbox.min
//= require js/ios-orientationchange-fix
//= require lib/antiscroll/antiscroll
//= require lib/antiscroll/jquery-mousewheel
//= require js/gebo_common
//= require lib/jquery-ui/jquery-ui-1.8.20.custom.min
//= require js/forms/jquery.ui.touch-punch.min
//= require js/jquery.imagesloaded.min
//= require js/jquery.wookmark
//= require js/jquery.mediaTable.min
//= require js/jquery.peity.min
//= require lib/flot/jquery.flot.min
//= require lib/flot/jquery.flot.resize.min
//= require lib/flot/jquery.flot.pie.min
//= require lib/fullcalendar/fullcalendar.min
//= require lib/list_js/list.min
//= require lib/chosen/chosen.jquery.min
//= require js/gebo_dashboard
//= require jquery_ujs
//= require lib/datatables/jquery.dataTables.min
//= require lib/datatables/ZeroClipboard
//= require lib/datatables/TableTools.min
//= require lib/datatables/jquery.dataTables.sorting
//= require lib/datatables/extras/Scroller/media/js/Scroller.min
//= require js/gebo_datatables
//= require jquery.maskMoney
//= require jquery.maskedinput
//= require lib/validation/jquery.validate


$(document).ready(function() {
  $(".cep").mask("99999-999");
  $(".cpf").mask("999.999.999-99");
  $(".cnpj").mask("99.999.999/9999-99");
  $(".telefone").mask("(99) 9999-9999");
  //somente numero
      $(".number").bind("keyup blur focus", function(e) {
          e.preventDefault();
          var expre = /[^0-9]/g;
          // REMOVE OS CARACTERES DA EXPRESSAO ACIMA
          if ($(this).val().match(expre))
              $(this).val($(this).val().replace(expre,''));
      });


  //foco no primeiro campo
  $("input:text:eq(0):visible").focus();
  //campo select personalizado
  $(".chzn-select").chosen();
  //mascara de moeda
  $(".money").maskMoney({thousands:".", decimal:","});
	//* show all elements & remove preloader
	setTimeout('$("html").removeClass("js")',1000);

    $('#bank_state_id').blur(function() {

        var data=$('#bank_state_id').val();
        $.ajax({

          type: "POST",
           url: "/dynamic_cities/"+data,
          data: data,

          beforeSend: function()
          {
            $('#spinner').show();
          },

          success: function(response)
          {
          	$('#spinner').hide();
          }

        });
    });

    $('#bank_city_id').blur(function() {

        var data=$('#bank_city_id').val();
        $.ajax({

          type: "POST",
           url: "/dynamic_neighborhoods/"+data,
          data: data,

          beforeSend: function()
          {
              $('#spinner_2').show();
          },

          success: function(response)
          {
          	$('#spinner_2').hide();
          }

        });
    });

});


jQuery.validator.addMethod("cpf", function(value, element) {
   value = jQuery.trim(value);
  
  value = value.replace('.','');
  value = value.replace('.','');
  cpf = value.replace('-','');
  while(cpf.length < 11) cpf = "0"+ cpf;
  var expReg = /^0+$|^1+$|^2+$|^3+$|^4+$|^5+$|^6+$|^7+$|^8+$|^9+$/;
  var a = [];
  var b = new Number;
  var c = 11;
  for (i=0; i<11; i++){
    a[i] = cpf.charAt(i);
    if (i < 9) b += (a[i] * --c);
  }
  if ((x = b % 11) < 2) { a[9] = 0 } else { a[9] = 11-x }
  b = 0;
  c = 11;
  for (y=0; y<10; y++) b += (a[y] * c--);
  if ((x = b % 11) < 2) { a[10] = 0; } else { a[10] = 11-x; }
  
  var retorno = true;
  if ((cpf.charAt(9) != a[9]) || (cpf.charAt(10) != a[10]) || cpf.match(expReg)) retorno = false;
  
  return this.optional(element) || retorno;

}, "Informe um CPF vÃ¡lido."); // Mensagem padrÃ£o 

jQuery.validator.addMethod("dateBR", function(value, element) {
   //contando chars
  if(value.length!=10) return false;
  // verificando data
  var data    = value;
  var dia     = data.substr(0,2);
  var barra1    = data.substr(2,1);
  var mes     = data.substr(3,2);
  var barra2    = data.substr(5,1);
  var ano     = data.substr(6,4);
  if(data.length!=10||barra1!="/"||barra2!="/"||isNaN(dia)||isNaN(mes)||isNaN(ano)||dia>31||mes>12)return false;
  if((mes==4||mes==6||mes==9||mes==11) && dia==31)return false;
  if(mes==2  &&  (dia>29||(dia==29 && ano%4!=0)))return false;
  if(ano < 1900)return false;
  return true;
}, "Informe uma data vÃ¡lida");  // Mensagem padrÃ£o 

jQuery.validator.addMethod("dateTimeBR", function(value, element) {
   //contando chars
  if(value.length!=16) return false;
   // dividindo data e hora
  if(value.substr(10,1)!=' ') return false; // verificando se hÃ¡ espaÃ§o
  var arrOpcoes = value.split(' ');
  if(arrOpcoes.length!=2) return false; // verificando a divisÃ£o de data e hora
  // verificando data
  var data    = arrOpcoes[0];
  var dia     = data.substr(0,2);
  var barra1    = data.substr(2,1);
  var mes     = data.substr(3,2);
  var barra2    = data.substr(5,1);
  var ano     = data.substr(6,4);
  if(data.length!=10||barra1!="/"||barra2!="/"||isNaN(dia)||isNaN(mes)||isNaN(ano)||dia>31||mes>12)return false;
  if ((mes==4||mes==6||mes==9||mes==11) && dia==31)return false;
  if (mes==2  &&  (dia>29||(dia==29 && ano%4!=0)))return false;
  // verificando hora
  var horario   = arrOpcoes[1];
  var hora    = horario.substr(0,2);
  var doispontos  = horario.substr(2,1);
  var minuto    = horario.substr(3,2);
  if(horario.length!=5||isNaN(hora)||isNaN(minuto)||hora>23||minuto>59||doispontos!=":")return false;
  return true;
}, "Informe uma data e uma hora vÃ¡lida");  



/*
 *
 * NOVO METODO PARA O JQUERY VALIDATE
 * VALIDA CNPJ COM 14 OU 15 DIGITOS
 * A VALIDAÃ‡ÃƒO Ã‰ FEITA COM OU SEM OS CARACTERES SEPARADORES, PONTO, HIFEN, BARRA
 *
 * ESTE MÃ‰TODO FOI ADAPTADO POR:
 * 
 * Shiguenori Suguiura Junior <junior@dothcom.net>
 * 
 * http://blog.shiguenori.com
 * http://www.dothcom.net
 * 
 */
jQuery.validator.addMethod("cnpj", function(cnpj, element) {
   cnpj = jQuery.trim(cnpj);
  
  // DEIXA APENAS OS NÃšMEROS
   cnpj = cnpj.replace('/','');
   cnpj = cnpj.replace('.','');
   cnpj = cnpj.replace('.','');
   cnpj = cnpj.replace('-','');

   var numeros, digitos, soma, i, resultado, pos, tamanho, digitos_iguais;
   digitos_iguais = 1;

   if (cnpj.length < 14 && cnpj.length < 15){
      return this.optional(element) || false;
   }
   for (i = 0; i < cnpj.length - 1; i++){
      if (cnpj.charAt(i) != cnpj.charAt(i + 1)){
         digitos_iguais = 0;
         break;
      }
   }

   if (!digitos_iguais){
      tamanho = cnpj.length - 2
      numeros = cnpj.substring(0,tamanho);
      digitos = cnpj.substring(tamanho);
      soma = 0;
      pos = tamanho - 7;

      for (i = tamanho; i >= 1; i--){
         soma += numeros.charAt(tamanho - i) * pos--;
         if (pos < 2){
            pos = 9;
         }
      }
      resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
      if (resultado != digitos.charAt(0)){
         return this.optional(element) || false;
      }
      tamanho = tamanho + 1;
      numeros = cnpj.substring(0,tamanho);
      soma = 0;
      pos = tamanho - 7;
      for (i = tamanho; i >= 1; i--){
         soma += numeros.charAt(tamanho - i) * pos--;
         if (pos < 2){
            pos = 9;
         }
      }
      resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
      if (resultado != digitos.charAt(1)){
         return this.optional(element) || false;
      }
      return this.optional(element) || true;
   }else{
      return this.optional(element) || false;
   }
}, "Informe um CNPJ valido."); // Mensagem padrÃ£o 

jQuery.validator.addMethod("notEqual", function(value, element, param) {
   return value == $(param).val() ? false : true;
}, "Este valor não pode ser igual"); // Mensagem padrÃ£o 

jQuery.validator.addMethod("diferenteDe", function(value, element, strCompara) {
   return value == strCompara ? false : true;
}, "Este valor não foi alterado"); // Mensagem padrÃ£o 

jQuery.validator.addMethod("maiorQue", function(value, element, param) {
   return value <= $(param).val() ? false : true;
}, "Este valor precisa ser maior"); // Mensagem padrÃ£o 

jQuery.validator.addMethod("menorQue", function(value, element, param) {
   return value >= $(param).val() ? false : true;
}, "Este valor precisa ser menor"); // Mensagem padrÃ£o 

