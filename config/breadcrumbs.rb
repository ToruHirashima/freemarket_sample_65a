crumb :root do
  link "FURIMA", root_path
end

crumb :mypage do
  link "マイページ", users_path
end

crumb :info_notice do
  link "お知らせ"
  parent :mypage
end

crumb :info_todo do
  link "やることリスト"
  parent :mypage
end

crumb :exhibitor_sale do
  link "出品した商品-出品中-"
  parent :mypage
end

crumb :exhibitor_progress do
  link "出品した商品-取引中-"
  parent :mypage
end

crumb :exhibitor_complete do
  link "出品した商品-売却済み-"
  parent :mypage
end

crumb :purchase_progress do
  link "購入した商品-取引中-"
  parent :mypage
end

crumb :purchase_complete do
  link "購入した商品-過去の取引-"
  parent :mypage
end

crumb :logout do
  link "ログアウト"
  parent :mypage
end

crumb :exhibition do
  link "出品する"
end

crumb :item_show do
  link "商品詳細ページ"
end

crumb :item_edit do
  link "出品情報編集ページ"
end

crumb :category_list do
  link "カテゴリ一覧", categories_path
end

crumb :category_show do |category|
  link "#{category.category}"
  parent :category_list
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).