//= require jquery
//= require js/jquery.min
//= require bootstrap/js/bootstrap.min
//= require js/jquery.debouncedresize.min
//= require js/jquery.actual.min
//= require js/jquery.cookie.min
//= require bootstrap/js/bootstrap.min
//= require lib/jBreadcrumbs/js/jquery.jBreadCrumb.1.1.min
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
//= require lib/multiselect/js/jquery.multi-select.min
//= require lib/chosen/chosen.jquery.min

$(document).ready(function() {
  $('.pre-selected-options').multiSelect({cssClass:"full_width"});
  $(".cep").mask("99999-999");
  $(".cnpj").mask("99.999.999/9999-99");
  $(".cpf").mask("999.999.999-99");
  
  $(".rg").bind("keyup blur focus", function(e) {
          e.preventDefault();
          var expre = /[^0-9]/g;
          // REMOVE OS CARACTERES DA EXPRESSAO ACIMA
          if ($(this).val().match(expre))
              $(this).val($(this).val().replace(expre,''));
      });
      //somente numero
      $(".number").bind("keyup blur focus", function(e) {
          e.preventDefault();
          var expre = /[^0-9]/g;
          // REMOVE OS CARACTERES DA EXPRESSAO ACIMA
          if ($(this).val().match(expre))
              $(this).val($(this).val().replace(expre,''));
      });
  //mascara de moeda
  $(".money").maskMoney({thousands:".", decimal:","});
  //* show all elements & remove preloader
  setTimeout('$("html").removeClass("js")',1000);
  gebo_chosen.init();
});
//* enhanced select elements
gebo_chosen = {
  init: function(){
    $(".chzn_a").chosen({
      allow_single_deselect: true
    });
  }
};
