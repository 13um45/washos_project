$(document).on('ready page:load', function () {
  $(".appointment_row").click(function () {
    window.location = $(this).data("link")
  });
});
