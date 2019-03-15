$(function(){
    function addCommaPrice(num){
      return String(num).replace( /(\d)(?=(\d\d\d)+(?!\d))/g, '$1,');
    }
  
    if(!$(".input-default").val() == ""){
      var editPrice = parseInt($(".input-default").val());
      $(".default-price").hide();
      var editCommission = Math.floor(editPrice * 0.1),
      editGain = Math.ceil(editPrice - editCommission);
      $(".handling_charge").text("¥" + addCommaPrice(editCommission)).show();
      $(".profitFee").text("¥" + addCommaPrice(editGain)).show();
    }
  
    $(".input-default").on("keyup", function(){
      var price = parseInt($(this).val());
      if(300 <= price && price < 10000000){
        $(".default-price").hide();
        var commission = Math.floor(price * 0.1),
        gain = Math.ceil(price - commission);
        $(".handling_charge").text("¥" + addCommaPrice(commission)).show();
        $(".profitFee").text("¥" + addCommaPrice(gain)).show();
      } else {
        $(".default-price").text("-");
        $(".default-price").show();
      }
    });
  });