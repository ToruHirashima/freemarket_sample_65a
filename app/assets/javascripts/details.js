$(function() {
  console.log("load");
  // 現時点では、該当ページで一度リロードしないとイベントリスナーが取り込まれないことに注意
  $(".detailBoxPhoto__sub").on("click", ".detailBoxPhoto__tmb", function(e) {
    let tmp = $(this).attr("src");
    $(".detailBoxPhoto__main").attr("src", tmp);
  });
});