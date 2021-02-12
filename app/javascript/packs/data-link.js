$(function() {
  $("tr[data-link]").click(function() {
    console.log('click')
    window.location = $(this).data("link")
  })
})