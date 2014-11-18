$("#branch_state_id").change(function() {

      var data=$('#branch_state_id').val();
      $.ajax({

        type: "POST",
         url: "/dynamic_branches_cits/"+data,
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

$("#branch_city_id").change(function() {

      var data=$('#branch_city_id').val();
      $.ajax({

        type: "POST",
         url: "/dynamic_branches_neighborhoods/"+data,
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
