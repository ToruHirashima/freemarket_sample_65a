$(function() {
  console.log("load");
  // 該当ページで一度読み込まないとイベントリスナーが取り込まれない
  $(".DetailMainPhoto__sub").on("click", ".DetailMainPhoto__sub--img", function(e) {
    let tmp = $(this).attr("src");
    $(".DetailMainPhoto__main--img").attr("src", tmp);
  });
});