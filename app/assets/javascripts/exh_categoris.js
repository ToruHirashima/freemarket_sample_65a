$(document).on('turbolinks:load', ()=> {
  let categoryId = $('#exh-category').val();
  if (categoryId == "") { categoryId = 0 }

  function buildHtml(data, idName, selectId) {
    let childHtml;
    data.forEach(function(child){
      let selectAttr = child.id == selectId ? `selected="selected" ` : '';
      childHtml += `<option ${selectAttr}value="${child.id}">${child.name}</option>`;
    });
    let html = `<select class="exhibition-box__text" id="item_category_${idName}id"><option value="">選択して下さい</option>
                  ${childHtml}
                </select>`
    return html;
  }

  function selectData(data, depth) {
    let selectData = [];
    data.forEach(function(select){
      if (select.depth == depth) {
        selectData.push(select);
      }
    });
    return selectData;
  }

  $.ajax({
    url: '/items/category_parent',  // リクエストを送信するURLを指定
    type: "GET",  // HTTPメソッドを指定（デフォルトはGET）
    data: {  // 送信するデータをハッシュ形式で指定
      init_id: categoryId
    },
    dataType: "json"  // レスポンスデータをjson形式と指定する
  })
  .done(function(data) {
    let parentId = 0, childrenId = 0, grandchildrenId = 0
    data.forEach(function(json){
      if (json.id == categoryId) {
        let id_len = json.path_ids.length;
        parentId = json.path_ids[0];
        if (id_len > 1) { childrenId = json.path_ids[1]; }
        if (id_len > 2) { grandchildrenId = json.path_ids[2]; }
      }
    });
    $('#select_parent').append(buildHtml(selectData(data, 0), '', parentId));
    if (parentId != 0) {
      $('#select_children').append(buildHtml(selectData(data, 1), 'children_', childrenId));
    }
    if (childrenId != 0) {
      $('#select_grandchildren').append(buildHtml(selectData(data, 2), 'grandchildren_', grandchildrenId));
    }
  })

  $('#select_parent').on('change', '#item_category_id', function(e) {
    let inputNum = $(this).val();
    $('#exh-category').val(inputNum);
    if (inputNum == "") {
      $("#select_children").empty();
      $("#select_grandchildren").empty();
    } else {
      $.ajax({
        url: '/items/category_children',  // リクエストを送信するURLを指定
        type: "GET",  // HTTPメソッドを指定（デフォルトはGET）
        data: {  // 送信するデータをハッシュ形式で指定
          parent_id: inputNum
        },
        dataType: "json"  // レスポンスデータをjson形式と指定する
      })
      .done(function(data) {
        $("#select_children").empty();
        $("#select_grandchildren").empty();
        $('#select_children').append(buildHtml(data, 'children_', 0));
      })
    }
  }).change();

  $('#select_children').on('change', '#item_category_children_id', function(e) {
    let inputNum = $(this).val();
    $('#exh-category').val(inputNum);
    if (inputNum == "") {
      $("#select_grandchildren").empty();
    } else {
      $.ajax({
        url: '/items/category_grandchildren',  // リクエストを送信するURLを指定
        type: "GET",  // HTTPメソッドを指定（デフォルトはGET）
        data: {  // 送信するデータをハッシュ形式で指定
          children_id: inputNum
        },
        dataType: "json"  // レスポンスデータをjson形式と指定する
      })
      .done(function(data) {
        $("#select_grandchildren").empty();
        $('#select_grandchildren').append(buildHtml(data, 'grandchildren_', 0));
      })
    }
  }).change();

  $('#select_grandchildren').on('change', '#item_category_grandchildren_id', function(e) {
    let inputNum = $(this).val();
    $('#exh-category').val(inputNum);
  }).change();
});
