$(document).on('turbolinks:load', ()=> {
  console.log("test");
  function buildFileField(index) {
    let html = `<div class="js-file_group" data-index="${index}">
                  <input class="js-file" type="file" name="item[images_attributes][${index}][url]" id="item_images_attributes_${index}_url">
                  <span class="js-remove">削除</span>
                </div>`;
    return html;
  }

  function buildImg(index, url) {
    let html = `<img data-index="${index}" class="exhibition-box__image--photo" src="${url}">`;
    return html;
  }

  let fileIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  lastIndex = $('js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);  // 0を起点としてインデックスの数(lastIndex)だけ要素を削除する
  $('.hidden-destroy').hide();  // hidden-destroyクラスの要素を非表示にする

  $('#image-box').on('change', '.js-file', function(e) {
    let targetIndex = $(this).parent().data('index');
    // ファイルのURLを取得
    let file = e.target.files[0];
    let blobUrl = window.URL.createObjectURL(file);
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', blobUrl);
    } else {
      $('#previews').append(buildImg(targetIndex, blobUrl));
      $('#image-box').append(buildFileField(fileIndex[0]));
      fileIndex.shift();  // shift()メソッドは、配列から最初の要素を取り除く（戻り値＝取り除いた値）
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);  // fileIndexの末尾の値(fileIndex[fileIndex.length - 1])に1を足した値を末尾に付加(push)する
    }
  });

  $('#image-box').on('click', '.js-remove', function() {
    console.log(this);
    let targetIndex = $(this).parent().data('index');
    let hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
    if (hiddenCheck) {
      hiddenCheck.prop('checked', true);  // 指定した属性に値を設定
    }
    $(this).parent().remove();
    if ($('.js-file').length == 0) {
      $('#image-box').append(buildFileField(fileIndex[0]));
    }
    $(`img[data-index="${targetIndex}"]`).remove();
  });
});