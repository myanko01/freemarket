$(function() {
  $('input[type=file]').after('<span></span>');


  $('input[type=file]').change(function() {
    var file = $(this).prop('files')[0];


    if (! file.type.match('image.*')) {

      $(this).val('');
      $('.sell__dropbox-container-clearfix').html('');
      return;
    }

    var reader = new FileReader();
    reader.onload = function() {
      var img_src = $('<img>').attr('src', reader.result);
      $('.sell__dropbox-container-clearfix').append(img_src);
        $('.sell__upload__drop-box').css('display','none')
    }
    reader.readAsDataURL(file);
  });
});
