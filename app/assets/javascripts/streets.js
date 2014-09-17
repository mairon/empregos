$("#street_state_id").change(function() {

      var data=$('#street_state_id').val();
      $.ajax({

        type: "POST",
         url: "/dynamic_street_cits/"+data,
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


$("#street_city_id").change(function() {

      var data=$('#street_city_id').val();
      $.ajax({

        type: "POST",
         url: "/dynamic_street_neighborhoods/"+data,
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
