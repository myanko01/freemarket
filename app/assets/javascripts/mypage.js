$(function(){
  $(".tab.do").on('click',function(){
    $(".mypage-tab-container-2").css({
      display: 'block'
    });
    $(".mypage-tab-container-1").css({
      display: 'none'
    });
  });
  $(".tab.done").on('click', function(){
    $(".mypage-tab-container-2").css({
      display: 'none'
    });
    $(".mypage-tab-container-1").css({
      display: 'block'
    });
  });
  $(".mypage-purchase-tabs__traded").on('click', function(){
    $(".mypage-purchase-container-2").css({
      zIndex: 2
    });
  });
  $(".mypage-purchase-tabs__trading").on('click', function(){
    $(".mypage-purchase-container-2").css({
      zIndex: 0
    });
  });
});

  