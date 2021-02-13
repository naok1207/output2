$(function() {
  $("#word_form_event").on('click', function() {
    $('#word_form').toggleClass('d-none');
    $('#word_form_btn').toggleClass('d-none');
    $(this).children('i').toggleClass('d-none');
  })

  $("#word_edit_event").on('click', function() {
    $(this).children('.btn').toggleClass('d-none');
    $('.word_edit').toggleClass('d-none');
  })
})