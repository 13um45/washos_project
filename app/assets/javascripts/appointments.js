$(document).on('turbolinks:load', function () {
  $(".appointment_row").click(function () {
    window.location = $(this).data("link")
  });

  $('#app_date_time').datetimepicker({
    format: 'Y-m-d H:i'
  });
});
