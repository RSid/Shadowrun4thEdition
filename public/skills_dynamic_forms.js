$( document ).ready(function() {
  $('#gear-type').change(function(e) {
    debugger
    if ( $('form select[name=PickGear] option:selected').val()==1 ) {
      alert('working!');
      console.log('victory');
    } else {
      console.log('at least something happened');
    }
  });
});
