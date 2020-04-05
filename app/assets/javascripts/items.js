$(document).on('turbolinks:load', ()=> {
  //プレビューのhtmlを定義
  function buildHTML(count, image) {
    var html = `<div class="preview-box" data-index="${count}">
                  <img class="upper-box" data-index="${count}" src="${image}">
                  <div class="delete-box">削除</div>
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
  lastIndex = $('js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);  // 0を起点としてインデックスの数(lastIndex)だけ要素を削除する
  // $('.hidden-destroy').hide();  // hidden-destroyクラスの要素を非表示にする
  
  // プレビューの追加
  $('#image-box').on('change', '.hidden-field', function() {
    //hidden-fieldのidの数値のみ取得
    var id = $(this).parent().data('box');
    //labelボックスのidとforを更新
    $('.label-box').attr({id: `label-box--${id}`,for: `item_images_attributes_${id}_url`});
    //選択したfileのオブジェクトを取得
    var file = this.files[0];
    var reader = new FileReader();
    //readAsDataURLで指定したFileオブジェクトを読み込む
    reader.readAsDataURL(file);
    //読み込み時に発火するイベント
    reader.onload = function() {
      var image = this.result;
      if (img = $(`img[data-index="${id}"]`)[0]) {
        img.setAttribute('src', image);
      } else {
        //プレビューが元々なかった場合はhtmlを追加
        $('.exhibition-box__previews').before(buildHTML(id, image));
        // $('.exhibition-box__image').append(buildHTML(id, image));
        $('#image-box').append(buildFileField(fileIndex[0]));
        let label_num = fileIndex.shift();  // shift()メソッドは、配列から最初の要素を取り除く（戻り値＝取り除いた値）
        fileIndex.push(fileIndex[fileIndex.length - 1] + 1);  // fileIndexの末尾の値(fileIndex[fileIndex.length - 1])に1を足した値を末尾に付加(push)する
        $('.label-box').attr({id: `label-box--${label_num}`, for: `item_images_attributes_${label_num}_url`}); 
      }
      //イメージを追加
      var count = $('.preview-box').length;
      //プレビューが10個あったらラベルを隠す 
      if (count == 10) { 
        $('.exhibition-box__previews').hide();
      }
    }
  });

  // 画像の削除
  $("#previews").on('click', '.delete-box', function() {
    var count = $('.preview-box').length;
    //item_images_attributes_${id}_image から${id}に入った数字のみを抽出
    var id = $(this).parent().data('index');
    //取得したidに該当するプレビューを削除
    $(this).parent().remove();
    $(`div[data-box="${id}"]`).remove();

    //削除時のラベル操作
    var count = $('.preview-box').length;
    //10個めが消されたらラベルを表示
    if (count == 9) {
      $('.exhibition-box__previews').show();
    }

    // if(id < 10){
    //   //削除された際に、空っぽになったfile_fieldをもう一度入力可能にする
    //   $('.label-box').attr({id: `label-box--${id}`,for: `item_images_attributes_${id}_url`});
    // }
  });
});
