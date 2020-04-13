$(document).on('turbolinks:load', ()=> {
  //プレビューのhtmlを定義
  function buildHTML(count, image) {
    let html = `<div class="preview-box" data-index="${count}">
                  <img class="upper-box" data-index="${count}" src="${image}">
                  <div class="lower-box">
                    <label class="update-box" for="item_images_attributes_${count}_url">変更</label>
                    <div class="delete-box">削除</div>
                  </div>
                </div>`
    return html;
  }

  function buildFileField(index) {
    let html = `<div class="js-file_group" data-box="${index}">
                  <input class="hidden-field" type="file" name="item[images_attributes][${index}][url]" id="item_images_attributes_${index}_url">
                </div>`;
    return html;
  }

  let fileIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  lastIndex = $('.js-file_group:last').data('box');
  fileIndex.splice(0, lastIndex);  // 0を起点としてインデックスの数(lastIndex)だけ要素を削除する
  // $('.hidden-destroy').hide();  // hidden-destroyクラスの要素を非表示にする（cssで対応中）
  // $('.hidden-field').hide();  // hidden-destroyクラスの要素を非表示にする（cssで対応中）
  
  // createエラーの場合の事前処理(一度入力した写真を残す方法が分かれば変更)
  if ($('.preview-box').length == 0) {
    $(".hidden-field").remove();
  }
  if ($('.hidden-field').length == 0) {
    $('#image-box').append(buildFileField(0));
  }

  // updateエラーの場合の事前処理（チェックボックスのチェックを外す）
  $('.hidden-destroy').each(function(i, e) {
    $(e).prop('checked', false)
  });
  
  // プレビューの追加
  $('#image-box').on('change', '.hidden-field', function() {
    let id = $(this).parent().data('box');
    let file = this.files[0];  //選択したfileのオブジェクトを取得
    let reader = new FileReader();
    reader.readAsDataURL(file);  //readAsDataURLで指定したFileオブジェクトを読み込む
    reader.onload = function() {  //読み込み時に発火するイベント
      let image = this.result;
      if (img = $(`img[data-index="${id}"]`)[0]) {
        img.setAttribute('src', image);
      } else {  //プレビューが元々なかった場合はhtmlを追加
        $('.exhibition-box__previews').before(buildHTML(id, image));
        $('#image-box').append(buildFileField(fileIndex[0]));
        let label_num = fileIndex.shift();  // shift()メソッドは、配列から最初の要素を取り除く（戻り値＝取り除いた値）
        fileIndex.push(fileIndex[fileIndex.length - 1] + 1);  // fileIndexの末尾の値(fileIndex[fileIndex.length - 1])に1を足した値を末尾に付加(push)する
        $('.label-box').attr({id: `label-box--${label_num}`, for: `item_images_attributes_${label_num}_url`});  //labelボックスのidとforを更新
      }
      //プレビューが10個あったらラベルを隠す 
      if ($('.preview-box').length >= 10) { 
        $('.exhibition-box__previews').hide();
      }
    }
  });

  // 画像の削除
  $('#previews').on('click', '.delete-box', function() {
    //取得したidに該当するプレビューを削除
    let id = $(this).parent().parent().data('index');
    const hiddenCheck = $(`input[data-index="${id}"].hidden-destroy`);
    if (hiddenCheck) hiddenCheck.prop('checked', true);  // もしチェックボックスが存在すればチェックを入れる
    $(this).parent().parent().remove();
    $(`div[data-box="${id}"]`).remove();
    //10個めが消されたらラベルを表示
    if ($('.preview-box').length < 10) {
      $('.exhibition-box__previews').show();
    }
  });
});
