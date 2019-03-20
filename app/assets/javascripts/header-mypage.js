$(function(){
    function show_menu(s,tag){
      $(s).hover(function(){
        plus_menu = $(this).children(tag);
        plus_menu.css('display','block');
        },
        function(){
          plus_menu = $(this).children(tag);
          plus_menu.css('display','none');
        });
      }
    show_menu('#switch','ul')
    show_menu('#switch','.mypage-boxes')
    show_menu('#switch2','.information-tab')
    show_menu("#switch3",'.todo-list-boxes')
  });
