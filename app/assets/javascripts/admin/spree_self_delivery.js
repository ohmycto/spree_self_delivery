$(document).ready(function(){
  $('#self_delivery_point_country_id').change(function(){
    $('#self_delivery_point_state_id, #self_delivery_point_state_name').attr('disabled', 'disabled');
    $.getJSON('/admin/countries/' + $(this).val() + '/states.json', function(data) {
      var options = ['<option value=""></option>']; 
      if(data.length > 0){
        $.each(data, function(key, val) {
          options.push('<option value="' + val.state.id + '">' + val.state.name + '</option>');
        }); 
        $('#self_delivery_point_state_id').removeAttr('disabled');
      }else{
        $('#self_delivery_point_state_name').removeAttr('disabled');
      }
      $('#self_delivery_point_state_id').html(options.join(''));
    });
  });
});