$("#individual_state_id").change(function() {

      var data=$('#individual_state_id').val();
      $.ajax({

        type: "POST",
         url: "/dynamic_individuals_cits/"+data,
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

$("#individual_city_id").change(function() {

      var data=$('#individual_city_id').val();
      $.ajax({

        type: "POST",
         url: "/dynamic_individuals_neighborhoods/"+data,
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
