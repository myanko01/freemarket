$(document).on('turbolinks:load', function() {

  // Mカテゴリーのselectを追加するHTML
  var cat_seach = $("#cat");

  function appendMselect() {
    var html =  
    `<select name="item[subcategory_id]" id="m_category">
        <option value>---</option>
    </select>
    <i class="fa fa-angle-down"><i>`
    cat_seach.append(html)
  }

  // Sカテゴリーのselectを追加するHTML
  function appendSselect() {
    var html =  
    `<select name="item[subsubcategory_id]" id="s_category">
        <option value>---</option>
    </select>
    <i class="fa fa-angle-down"><i>`
    cat_seach.append(html)
  }

  // Mカテゴリーのoptionを追加するHTML
  function appendMcat(m_cat) {
    $("#m_category").append(
      $("<option>")
        .val($(m_cat).attr('id'))
        .text($(m_cat).attr('name'))
    )
  }

  // Sカテゴリーのoptionを追加するHTML
  function appendScat(s_cat) {
    $("#s_category").append(
      $("<option>")
        .val($(s_cat).attr('id'))
        .text($(s_cat).attr('name'))
    )
  }

  // Lカテゴリーが選択された時のアクション
  $("#l_category").on('change', function() {
    l_cat = $(this).val()
    $("#m_category").remove()
    $("#s_category").remove()

    // ajaxでリクエストを送信
      $.ajax({
        type: "GET",
        url: "/items/search",
        data: {l_cat: l_cat},
        dataType: 'json'
      })
      // doneメソッドでappendする
      .done(function(m_cat) {
        appendMselect()
        m_cat.forEach(function(m_cat) {
          appendMcat(m_cat)
        })
      })
    })

// Mカテゴリーが選択された時のアクション
  $(document).on('change', "#m_category", function() {
    m_cat = $(this).val()
    $("#s_category").remove()

    $.ajax({
      type: "GET",
      url: "/items/search",
      data: {m_cat: m_cat},
      dataType: 'json'
    })
    .done(function(s_cat) {
      appendSselect()
      s_cat.forEach(function(s_cat) {
        appendScat(s_cat)
      })
    })
  })
})