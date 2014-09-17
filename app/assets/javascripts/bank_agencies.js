$("#bank_agency_state_id").change(function() {

      var data=$('#bank_agency_state_id').val();
      $.ajax({

        type: "POST",
         url: "/dynamic_bank_agencies_cits/"+data,
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

$("#bank_agency_city_id").change(function() {

      var data=$('#bank_agency_city_id').val();
      $.ajax({

        type: "POST",
         url: "/dynamic_bank_agencies_neighborhoods/"+data,
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
