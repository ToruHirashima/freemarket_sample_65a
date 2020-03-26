// $(function() {
$(document).on('turbolinks:load', ()=> {
    // タブを配列として取得
  let noticeTabs = $(".mypage__container-tab--notice");
  let orderTabs = $(".mypage__container-tab--order");
  let exhibitorTabs = $(".mypage__container-tab--exhibitor");

  // クラスの切り替えを定義する関数
  function noticeTabSwitch() {
    $(".mypage__container-tab--notice-active").removeClass("mypage__container-tab--notice-active");  // activeのクラスを削除
    $(this).addClass("mypage__container-tab--notice-active");  // activeのクラスを追加
    const index = noticeTabs.index(this);  // クリックされた要素のインデックスを取得（0か1）
    $(".info__block--notice").removeClass("info__block--active").eq(index).addClass("info__block--active");  // 関連する情報をactiveにする
  }
  function orderTabSwitch() {
    $(".mypage__container-tab--order-active").removeClass("mypage__container-tab--order-active");
    $(this).addClass("mypage__container-tab--order-active");
    const index = orderTabs.index(this);
    $(".info__block--order").removeClass("info__block--active").eq(index).addClass("info__block--active");
  }
  function exhibitorTabSwitch() {
    $(".mypage__container-tab--exhibitor-active").removeClass("mypage__container-tab--exhibitor-active");
    $(this).addClass("mypage__container-tab--exhibitor-active");
    const index = exhibitorTabs.index(this);
    $(".info__block--exhibitor").removeClass("info__block--active").eq(index).addClass("info__block--active");
  }

  // クリックイベントが発生した場所を探して関数を呼び出す
  noticeTabs.click(noticeTabSwitch);
  orderTabs.click(orderTabSwitch);
  exhibitorTabs.click(exhibitorTabSwitch);

  // $("#info-btn").on('click', function(e) {
  //   e.preventDefault();
  //   $("#info-action").click();
  // });
  // $("#todo-btn").on('click', function(e) {
  //   e.preventDefault();
  //   $("#todo-action").click();
  // });

  $("#exhibitor_2").on('click', function(e) {
    e.preventDefault();
    $("#todo-action").click();
  });
});