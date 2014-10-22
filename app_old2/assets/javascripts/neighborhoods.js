$("#neighborhood_state_id").change(function() {

      var data=$('#neighborhood_state_id').val();
      $.ajax({

        type: "POST",
         url: "/dynamic_cits/"+data,
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
