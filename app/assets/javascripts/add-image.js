$(function() {
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
            $('#item_images_attributes_0_id').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#item_images_attributes").change(function(){
    readURL(this);
    });
});
$(document).on('turbolinks:load', function() {
    preview = $(".sell__upload__items__container");
    inputnum = 0
    deletenum = 0
    number = 0
    function buildImageHTML(file){
            var html =
                    `<li class="sell__upload__item">
                        <figure class="sell__upload__figure landscape">
                            <img src="${ file.target.result }", width="114", height="100">
                        </figure>
                        <div class="sell__upload__button">
                            <a id="delete-btn-${inputnum}">編集</a>
                            <a href="" class="sell__upload__edit">削除</a>
                        </div>
                    </li>`
            preview.append(html);
                $('.sell__upload__drop-box.have__item-'+ inputnum +'').css('display','none')
                    inputnum +=1;
                    console.log(html)
                $('.sell__upload__drop-box.have__item-'+ deletenum +'').css('display','block')
                    deletenum +=1
      };

    $('form').on('change', 'input[type="file"]',function(e) {
        var file = e.target.files[0],
            reader = new FileReader(),
            $preview = $(".sell__upload__items");
            t = this;
        // 画像ファイル以外の場合は何もしない
        if(file.type.indexOf("image") < 0){
            return false;
      };
  
      // ファイル読み込みが完了した際のイベント登録
      reader.onload = (function(file) {
        return function(e) {
            // .prevewの領域の中にロードした画像を表示するimageタグを追加
            buildImageHTML(e);
        };
      })(file);
      reader.readAsDataURL(file);
    });
});