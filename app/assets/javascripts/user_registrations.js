$(function(){

  // formデータ保管用のフィールド
  var userFormData;

  // formdata setter
  function setUserFormData( formData ){
    userFormData = new FormData(formData)
  }

  // formdata getter
  function getUserFormData(){
    return userFormData;
  }

  // page制御
  function nextPage(selector){
    var activeSection = $(selector).parents('.user-regist');
    activeSection.removeClass('active');
    nextSection = activeSection.next()
    nextSection.addClass('active');
    $(window).scrollTop(0);
  }

  // progressBar制御
  function progressBarController(){
    var nextProgressBar = $('.header-reg').find('li.active')
    nextProgressBar.removeClass('active').addClass('thlough');
    nextProgressBar.next().addClass('active');
  }


  // $('#user-forms').on('submit', function(e){
  //   e.preventDefault();
  //   var formData = new FormData(this);
  //   setUserFormData(formData);
  //   nextPage(this);
  //   progressBarController();
  //   return false;
  // })

  // $('#phone-form').on('submit', function(e){
  //   e.preventDefault();
  //   formData = getUserFormData();
  //   nextPage(this);
  //   progressBarController();
  //   return false;
  // })
})