$(document).on('turbolinks:load', ()=> {
  let cate_id = $('#exh-category').val();
  if (cate_id == "") { cate_id = 0 }

  function buildChildren(data, idName, select_id) {
    let childHtml;
    data.forEach(function(child){
      let selectAttr = child.id == select_id ? `selected="selected" ` : '';
      childHtml += `<option ${selectAttr}value="${child.id}">${child.name}</option>`;
    });
    let html = `<select class="exhibition-box__text" id="item_category_${idName}id"><option value="">選択して下さい</option>
                  ${childHtml}
                </select>`
    return html;
  }

  $.ajax({
    url: '/items/category_parent',  // リクエストを送信するURLを指定
    type: "GET",  // HTTPメソッドを指定（デフォルトはGET）
    data: {  // 送信するデータをハッシュ形式で指定
      init_id: cate_id
    },
    dataType: "json"  // レスポンスデータをjson形式と指定する
  })
  .done(function(data) {
    let parent_id = 0
    let children_id = 0
    let grandchildren_id = 0
    data.forEach(function(json){
      if (json.id == cate_id) {
        let id_len = json.path_ids.length;
        parent_id = json.path_ids[0]
        if (id_len > 1) { children_id = json.path_ids[1] }
        if (id_len > 2) { grandchildren_id = json.path_ids[2] }
      }
    });
    
    let parent_data = [];
    data.forEach(function(parent){
      if (parent.depth == 0) {
        parent_data.push(parent);
      }
    });
    $('#select_parent').append(buildChildren(parent_data, '', parent_id));
    
    if (parent_id != 0) {
      let child_data = [];
      data.forEach(function(child){
        if (child.depth == 1) {
          child_data.push(child);
        }
      });
      $('#select_children').append(buildChildren(child_data, 'children_', children_id));
    }

    if (children_id != 0) {
      let grandchild_data = [];
      data.forEach(function(grandchild){
        if (grandchild.depth == 2) {
          grandchild_data.push(grandchild);
        }
      });
      $('#select_grandchildren').append(buildChildren(grandchild_data, 'grandchildren_', grandchildren_id));
    }
  })

  $('#select_parent').on('change', '#item_category_id', function(e) {
    let inputNum = $(this).val();
    $('#exh-category').val(inputNum);
    if (inputNum != "") {
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
        $('#select_children').append(buildChildren(data, 'children_', 0));
      })
    }
  }).change();

  $('#select_children').on('change', '#item_category_children_id', function(e) {
    let inputNum = $(this).val();
    $('#exh-category').val(inputNum);
    if (inputNum != "") {
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
        $('#select_grandchildren').append(buildChildren(data, 'grandchildren_', 0));
      })
    }
  }).change();

  $('#select_grandchildren').on('change', '#item_category_grandchildren_id', function(e) {
    let inputNum = $(this).val();
    $('#exh-category').val(inputNum);
  }).change();
});
