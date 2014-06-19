$( document ).ready(function() {
  $('#weapons-input').hide();

  $('#PickGear').change(function() {

    var optionValue = $('#PickGear option:selected').val();

    if ( optionValue!=1 ) {

      $('#weapons-input').hide();
      $('#under-constructon').show();

    } else {

      $('#weapons-input').show();
      $('#under-constructon').show();
    }
  });
});
