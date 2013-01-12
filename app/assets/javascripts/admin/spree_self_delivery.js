$(document).ready(function(){
  $('#self_delivery_point_country_id').change(function(){
    $('#self_delivery_point_state_id').attr('disabled', 'disabled');
    $.getJSON('/admin/countries/' + $(this).val() + '/states.json', function(data) {
      var options = []; 
      if(data.length > 0){
        $.each(data, function(key, val) {
          options.push('<option value="' + val.state.id + '">' + val.state.name + '</option>');
        }); 
      }else{
        options.push('<option value=""></option>')
      }
      $('#self_delivery_point_state_id').html(options.join(''));
      $('#self_delivery_point_state_id').removeAttr('disabled');
    });
  });
});