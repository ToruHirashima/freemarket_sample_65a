$(function() {
  console.log("load");
  // 現時点では、該当ページで一度リロードしないとイベントリスナーが取り込まれないことに注意
  $(".detail-box-photo__sub").on("click", ".detail-box-photo__tmb", function(e) {
    let tmp = $(this).attr("src");
    $(".detail-box-photo__main").attr("src", tmp);
  });
});