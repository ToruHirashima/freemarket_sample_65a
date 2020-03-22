# レディースカテゴリ

lady = Category.create(name: "レディース")

lady_1 = lady.children.create(name: "トップス")
lady_1.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"},{name: "Tシャツ/カットソー(七分/長袖)"},{name: "シャツ/ブラウス(半袖/袖なし)"},{name: "シャツ/ブラウス(七分/長袖)"},{name: "ポロシャツ"},{name: "キャミソール"},{name: "タンクトップ"},{name: "ホルターネック"},{name: "ニット/セーター"},{name: "チュニック"},{name: "カーディガン/ボレロ"},{name: "アンサンブル"},{name: "ベスト/ジレ"},{name: "パーカー"},{name: "その他"}])

lady_2 = lady.children.create(name: "ジャケット/アウター")
lady_2.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニムジャケット"},{name: "レザージャケット"},{name: "ダウンジャケット"},{name: "ら０ダースジャケット"},{name: "ミリタリージャケット"},{name: "ダウンベスト"},{name: "ジャンパー/ブルゾン"},{name: "ポンチョ"},{name: "ロングコート"},{name: "トレンチコート"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "チェスターコート"},{name: "モッズコート"},{name: "スタジャン"},{name: "毛皮/ファーコート"},{name: "スプリングコート"},{name: "スカジャン"},{name: "その他"}])

lady_3 = lady.children.create(name: "パンツ")
lady_3.children.create([{name: "デニム/ジーンズ"},{name: "ショートパンツ"},{name: "カジュアルパンツ"},{name: "ハーフパンツ"},{name: "チノパン"},{name: "ワークパンツ/カーゴパンツ"},{name: "クロップドパンツ"},{name: "サロペット/オーバーオール"},{name: "オールインワン"},{name: "サルエルパンツ"},{name: "ガウチョパンツ"},{name: "その他"}])

lady_4 = lady.children.create(name: "スカート")
lady_4.children.create([{name:"ミニスカート"},{name: "ひざ丈スカート"},{name: "ロングスカート"},{name: "キュロット"},{name: "その他"}])

lady_5 = lady.children.create(name: "ワンピース")
lady_5.children.create([{name: "ミニワンピース"},{name: "ひざ丈ワンピース"},{name: "ロングワンピース"},{name: "その他"}])

lady_6 = lady.children.create(name: "靴")
lady_6.children.create([{name: "ハイヒール/パンプス"},{name: "ブーツ"},{name: "サンダル"},{name: "スニーカー"},{name: "ミュール"},{name: "モカシン"},{name: "ローファー/革靴"},{name: "フラットシューズ/バレエシューズ"},{name: "長靴/レインシューズ"},{name: "その他"}])

lady_7 = lady.children.create(name: "ルームウェア/パジャマ")
lady_7.children.create([{name: "パジャマ"},{name: "ルームウェア"}])

lady_8 = lady.children.create(name: "レッグウェア")
lady_8.children.create([{name: "ソックス"},{name: "スパッツ/レギンス"},{name: "ストッキング/タイツ"},{name: "レッグウォーマー"},{name: "その他"}])

lady_9 = lady.children.create(name: "帽子")
lady_9.children.create([{name: "ニットキャップ/ビーニー"},{name: "ハット"},{name: "ハンチング/ベレー"},{name: "キャップ"},{name: "キャスケット"},{name: "麦わら帽子"},{name: "その他"}])

lady_10 = lady.children.create(name: "バッグ")
lady_10.children.create([{name: "ハンドバッグ"},{name: "トートバッグ"},{name: "エコバッグ"},{name: "リュック/バックパック"},{name: "ボストンバッグ"},{name: "スポーツバッグ"},{name: "ショルダーバッグ"},{name: "クラッチバッグ"},{name: "ポーチ/バニティ"},{name: "ボディバッグ/ウエストバッグ"},{name: "マザーズバッグ"},{name: "メッセンジャーバッグ"},{name: "ビジネスバッグ"},{name: "旅行用バッグ/キャリーバッグ"},{name: "ショップ袋"},{name: "和装用バッグ"},{name: "かごバッグ"},{name: "その他"}])

lady_11 = lady.children.create(name: "アクセサリー")
lady_11.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス(片耳用)"},{name: "ピアス(両耳用)"},{name: "イヤリング"},{name: "アンクレット"},{name: "ブローチ/コサージュ"},{name: "チャーム"},{name: "その他"}])

lady_12 = lady.children.create(name: "ヘアアクセサリー")
lady_12.children.create([{name: "ヘアゴム/シュシュ"},{name: "ヘアバンド/カチューシャ"},{name: "ヘアピン"},{name: "その他"}])

lady_13 = lady.children.create(name: "小物")
lady_13.children.create([{name: "長財布"},{name: "折り財布"},{name: "コインケース/小銭入れ"},{name: "名刺入れ/定期入れ"},{name: "キーケース"},{name: "キーホルダー"},{name: "手袋/アームカバー"},{name: "ハンカチ"},{name: "ベルト"},{name: "マフラー/ショール"},{name: "ストール/スヌード"},{name: "バンダナ/スカーフ"},{name: "ネックウォーマー"},{name: "サスペンダー"},{name: "サングラス／メガネ"},{name: "モバイルケース/カバー"},{name: "手帳"},{name: "イヤマフラー"},{name: "傘"},{name: "レインコート/ポンチョ"},{name: "ミラー"},{name: "タバコグッズ"},{name: "その他"}])

lady_14 = lady.children.create(name: "時計")
lady_14.children.create([{name: "腕時計(アナログ)"},{name: "腕時計(デジタル)"},{name: "ラバーベルト"},{name: "レザーベルト"},{name: "金属ベルト"},{name: "その他")]}

lady_15 = lady.children.create(name: "ウィッグ/エクステ")
lady_15.children.create([{name: "前髪ウィッグ"},{name: "ロングストレート"},{name: "ロングカール"},{name: "ショートストレート"},{name: "ショートカール"},{name: "その他"}])

lady_16 = lady.children.create(name: "浴衣/水着")
lady_16.children.create([{name: "浴衣"},{name: "着物"},{name: "振袖"},{name: "長襦袢/半襦袢" },{name: "水着セパレート" },{name: "水着ワンピース" },{name: "水着スポーツ用" },{name: "その他" }])

lady_17 = lady.children.create(name: "スーツ/フォーマル/ドレス")
lady_17.children.create([{name: "スカートスーツ上下" },{name: "パンツスーツ上下" },{name: "ドレス" },{name: "パーティーバッグ" },{name: "シューズ" },{name: "ウェディング" },{name: "その他" }])

lady_18 = lady.children.create(name: "マタニティ")
lady_18.children.create([{name: "トップス" },{name: "アウター" },{name: "インナー" },{name: "ワンピース" },{name: "パンツ/スパッツ" },{name: "スカート" },{name: "パジャマ" },{name: "授乳服" },{name: "その他" }])

lady_19 = lady.children.create(name: "その他")
lady_19.children.create([{name: "コスプレ" },{name: "下着"},{name: "その他"}])


# メンズカテゴリ

men = Category.create(name: "メンズ")

men_1 = men.children.create(name: "トップス")
men_1.children.create([{name "Tシャツ/カットソー(半袖/袖なし)"},{name: "Tシャツ/カットソー(七分/長袖)" },{name: "シャツ" },{name: "ポロシャツ" },{name: "タンクトップ" },{name: "ニット/セーター" },{name: "パーカー" },{name: "カーディガン" },{name: "スウェット" },{name: "ジャージ" },{name: "ベスト" },{name: "その他" }])

men_2 = men.children.create(name: "ジャケット/アウター" )
men_2.children.create([{name: "テーラードジャケット" },{name: "ノーカラージャケット" },{name: "Gジャン/デニムジャケット" },{name: "レザージャケット" },{name: "ダウンジャケット" },{name: "ライダースジャケット" },{name: "ミリタリージャケット" },{name: "ナイロンジャケット" },{name: "フライトジャケット" },{name: "ダッフルコート" },{name: "ピーコート" },{name: "ステンカラーコート" },{name: "トレンチコート" },{name: "モッズコート" },{name: "チェスターコート" },{name: "スタジャン" },{name: "スカジャン" },{name: "ブルゾン" },{name: "マウンテンパーカー" },{name: "ダウンベスト" },{name: "ポンチョ" },{name: "カバーオール" },{name: "その他" }])

men_3 = men.children.create(name: "パンツ" )
men_3.children.create([{name: "デニム/ジーンズ" },{name: "ワークパンツ/カーゴパンツ" },{name: "スラックス" },{name: "チノパン" },{name: "ショートパンツ" },{name: "ペインターパンツ" },{name: "サルエルパンツ" },{name: "オーバーオール" },{name: "その他" }])

men_4 = men.children.create(name: "靴")
men_4.children.create([{name: "スニーカー" },{name: "サンダル" },{name: "ブーツ" },{name: "モカシン" },{name: "ドレス/ビジネス" },{name: "長靴/レインシューズ" },{name: "デッキシューズ" },{name: "その他" }])

men_5 = men.children.create(name: "バッグ" )
men_5.children.create([{name: "ショルダーバッグ" },{name: "トートバッグ" },{name: "ボストンバッグ" },{name: "リュック/バックパック" },{name: "ウエストポーチ" },{name: "ボディーバック" },{name: "ドラムバッグ" },{name: "ビジネスバッグ" },{name: "トラベルバッグ" },{name: "メッセンジャーバッグ" },{name: "その他"}])

men_6 = men.children.create(name: "スーツ" )
men_6.children.create([{name: "スーツジャケット" },{name: "スーツベスト" },{name: "スラックス" },{name: "セットアップ" },{name: "その他" }])

men_7 = men.children.create(name: "帽子" )
men_7.children.create([{name: "キャップ" },{name: "ハット" },{name: "ニットキャップ/ビーニー" },{name: "ハンチング/ベレー帽" },{name: "キャスケット" },{name: "サンバイザー" },{name: "その他" }])

men_8 = men.children.create(name: "アクセサリー" )
men_8.children.create([{name: "ネックレス" },{name: "ブレスレット" },{name: "バングル/リストバンド" },{name: "リング" },{name: "ピアス(片耳用)" },{name: "ピアス(両耳用)" },{name: "アンクレット" },{name: "その他" }])

men_9 = men.children.create(name : "小物" )
men_9.children.create([{name: "長財布" },{name: "折り財布" },{name: "マネークリップ" },{name: "コインケース/小銭入れ" },{name: "名刺入れ/定期入れ" },{name: "キーケース" },{name: "キーホルダー" },{name: "ネクタイ" },{name: "手袋" },{name:"ハンカチ" },{name: "ベルト" },{name: "マフラー" },{name: "ストール" },{name: "バンダナ" },{name: "ネックウォーマー" },{name: "サスペンダー" },{name: "ウォレットチェーン" },{name: "サングラス/メガネ" },{name: "モバイルケース/カバー" },{name: "手帳" },{name: "ストラップ" },{name: "ネクタイピン" },{name: "カフリンクス" },{name: "イヤマフラー" },{name: "傘" },{name: "レインコート" },{name: "ミラー" },{name: "タバコグッズ" },{name: "その他" }])

men_10 = lady.children.create(name: "時計")
men_10.children.create([{name: "腕時計(アナログ)"},{name: "腕時計(デジタル)" },{name: "ラバーベルト" },{name: "レザーベルト" },{name: "金属ベルト"},{name: "その他" }])

men_11 = men.children.create(name: "水着" )
men_11.children.create([{name: "一般水着" },{name: "スポーツ用" },{name: "アクセサリー" },{name: "その他" }])

men_12 = men.children.create(name: "レッグウェア" )
men_12.children.create([{name: "ソックス" },{name: "レギンス/スパッツ" },{name: "レッグウォーマー" },{name: "その他" }])

men_13 = men.children.create(name: "アンダーウェア" )
men_13.children.create([{name: "トランクス" },{name: "ボクサーパンツ" },{name: "その他" }])

men_14 = men.children.create(name: "その他" )
men_14.children.create([{name: "すべて" }])

# ベビー・キッズカテゴリ

baby = Category.create(name: "ベビー・キッズ")

baby_1 = baby.children.create(name: "ベビー服(女の子用) ~95cm")
baby_1.children.create([{ name: "トップス" },{ name: "アウター" },{ name: "パンツ" },{ name: "スカート" },{ name: "ワンピース" },{ name: "ベビードレス" },{ name: "おくるみ" },{ name: "下着/肌着" },{ name: "パジャマ" },{ name: "ロンパース" },{ name: "その他" }])

baby_2 = baby.children.create(name: "ベビー服(男の子用) ~95cm")
baby_2.children.create([{ name: "トップス" },{ name: "アウター" },{ name: "パンツ" },{ name: "おくるみ" },{ name: "下着/肌着" },{ name: "パジャマ" },{ name: "ロンパース" },{ name: "その他" }])

baby_3 = baby.children.create(name: "ベビー服(男女兼用) ~95cm")
baby_3.children.create([{ name: "トップス" },{ name: "アウター" },{ name: "パンツ" },{ name: "おくるみ" },{ name: "下着/肌着" },{ name: "パジャマ" },{ name: "ロンパース" },{ name: "その他" }])

baby_4 = baby.children.create(name: "キッズ服(女の子用) 100cm~")
baby_4.children.create([{ name: "コート" },{ name: "ジャケット/上着" },{ name: "トップス(Tシャツ/カットソー)" },{ name: "トップス(トレーナー)" },{ name: "トップス(チュニック)" },{ name: "トップス(タンクトップ)" },{ name: "トップス(その他)" },{ name: "スカート" },{ name: "パンツ" },{ name: "ワンピース" },{ name: "セットアップ" },{ name: "パジャマ" },{ name: "フォーマル/ドレス" },{ name: "和服" },{ name: "浴衣" },{ name: "甚平" },{ name: "水着" },{ name: "その他" }])

baby_5 = baby.children.create(name: "キッズ服(男の子用) 100cm~")
baby_5.children.create([{ name: "コート" },{ name: "ジャケット/上着" },{ name: "トップス(Tシャツ/カットソー)" },{ name: "トップス(トレーナー)" },{ name: "トップス(その他)" },{ name: "パンツ" },{ name: "セットアップ" },{ name: "パジャマ" },{ name: "フォーマル/ドレス" },{ name: "和服" },{ name: "浴衣" },{ name: "甚平" },{ name: "水着" },{ name: "その他" }])

baby_6 = baby.children.create(name: "キッズ服(男女兼用) 100cm~")
baby_6.children.create([{ name: "コート" },{ name: "ジャケット/上着" },{ name: "トップス(Tシャツ/カットソー)" },{ name: "トップス(トレーナー)" },{ name: "トップス(その他)" },{ name: "ボトムス" },{ name: "パジャマ" },{ name: "その他" }])

baby_7 = baby.children.create(name: "キッズ靴" )
baby_7.children.create([{ name: "スニーカー" },{ name: "サンダル" },{ name: "ブーツ" },{ name: "長靴" },{ name: "その他" }])

baby_8 = baby.children.create(name: "子ども用ファッション小物" )
baby_8.children.create([{ name: "靴下/スパッツ" },{ name: "帽子" },{ name: "エプロン" },{ name: "サスペンダー" },{ name: "タイツ" },{ name: "ハンカチ" },{ name: "バンダナ" },{ name: "ベルト" },{ name: "マフラー" },{ name: "傘" },{ name: "手袋" },{ name: "スタイ" },{ name: "バッグ" },{ name: "その他" }])

baby_9 = baby.children.create(name: "おむつ/トイレ/バス" )
baby_9.children.create([{ name: "おむつ用品" },{ name: "おまる/補助便座" },{ name: "トレーニングパンツ" },{ name: "ベビーバス" },{ name: "お風呂用品" },{ name: "その他" }])

baby_10 = baby.children.create(name: "外出/移動用品" )
baby_10.children.create([{ name: "ベビーカー" },{ name: "抱っこひも/スリング" },{ name: "チャイルドシート" },{ name: "その他" }])

baby_11 = baby.children.create(name: "授乳/食事" )
baby_11.children.create([{ name: "ミルク" },{ name: "ベビーフード" },{ name: "ベビー用食器" },{ name: "その他" }])

baby_12 = baby.children.create(name: "ベビー家具/寝具/室内用品" )
baby_12.children.create([{ name: "ベッド" },{ name: "毛布/布団" },{ name: "イス" },{ name: "たんす" },{ name: "その他" }])

baby_13 = baby.children.create(name: "おもちゃ" )
baby_13.children.create([{ name: "おふろのおもちゃ" },{ name: "がらがら" },{ name: "オルゴール" },{ name: "ベビージム" },{ name: "手押し車/カタカタ" },{ name: "知育玩具" },{ name: "その他" }])

baby_14 = baby.children.create(name: "行事/記念品" )
baby_14.children.create([{ name: "お宮参り用品" },{ name: "お食い初め用品" },{ name: "アルバム" },{ name: "その他" }])

baby_15 = baby.children.create(name: "その他" )
baby_15.children.create([{ name: "母子手帳用品" },{ name: "その他" }])

# インテリア・住まい・小物カテゴリ

interior_house_accessory = Category.create(name: "インテリア・住まい・小物")

interior_house_accessory_1 = interior_house_accessory.children.create(name: "キッチン/食器")
interior_house_accessory_1.children.create([{ name: "食器" },{ name: "調理器具" },{ name: "収納/キッチン雑貨" },{ name: "弁当用品" },{ name: "カトラリー(スプーン等)" },{ name: "テーブル用品" },{ name: "容器" },{ name: "エプロン" },{ name: "アルコールグッズ" },{ name: "浄水器" },{ name: "その他" }])

interior_house_accessory_2 = interior_house_accessory.children.create(name: "ベッド/マットレス")
interior_house_accessory_2.children.create([{ name: "セミシングルベッド" },{ name: "シングルベッド" },{ name: "セミダブルベッド" },{ name: "ダブルベッド" },{ name: "ワイドダブルベッド" },{ name: "クイーンベッド" },{ name: "キングベッド" },{ name: "脚付きマットレスベッド" },{ name: "マットレス" },{ name: "すのこベッド" },{ name: "ロフトベッド/システムベッド" },{ name: "簡易ベッド/折りたたみベッド" },{ name: "収納付き" },{ name: "その他" }])

interior_house_accessory_3 = interior_house_accessory.children.create(name: "ソファ/ソファベッド")
interior_house_accessory_3.children.create([{ name: "ソファセット" },{ name: "シングルソファ" },{ name: "トリプルソファ" },{ name: "オットマン" },{ name: "コーナーソファ" },{ name: "ビーズソファ/クッションソファ" },{ name: "ローソファ/フロアソファ" },{ name: "ソファベッド" },{ name: "応接セット" },{ name: "ソファカバー" },{ name: "リクライニングソファ" },{ name: "その他" }])

interior_house_accessory_4 = interior_house_accessory.children.create(name: "椅子/チェア")
interior_house_accessory_4.children.create([{ name: "一般" },{ name: "スツール" },{ name: "ハイバックチェア" },{ name: "ロッキングチェア" },{ name: "座椅子" },{ name: "折り畳み椅子" },{ name: "デスクチェア" },{ name: "その他" }])

interior_house_accessory_5 = interior_house_accessory.children.create(name: "机/テーブル")
interior_house_accessory_5.children.create([{ name: "こたつ" },{ name: "カウンターテーブル" },{ name: "サイドテーブル" },{ name: "センターテーブル" },{ name: "ダイニングテーブル" },{ name: "座卓/ちゃぶ台" },{ name: "アウトドア用" },{ name: "パソコン用" },{ name: "事務机/学習机" },{ name: "その他" }])

interior_house_accessory_6 = interior_house_accessory.children.create(name: "収納家具")
interior_house_accessory_6.children.create([{ name: "リビング収納" },{ name: "キッチン収納" },{ name: "玄関/屋外収納" },{ name: "バス/トイレ収納" },{ name: "本収納" },{ name: "本/CD/DVD収納" },{ name: "洋服タンス/押入れ収納" },{ name: "電話台/ファックス台" },{ name: "ドレッサー/鏡台" },{ name: "棚/ラック" },{ name: "ケース/ボックス" },{ name: "その他" }])

interior_house_accessory_7 = interior_house_accessory.children.create(name: "ラグ/カーペット/マット")
interior_house_accessory_7.children.create([{ name: "ラグ" },{ name: "カーペット" },{ name: "ホットカーペット" },{ name: "玄関/キッチンマット" },{ name: "トイレ/バスマット" },{ name: "その他" }])

interior_house_accessory_8 = interior_house_accessory.children.create(name: "カーテン/ブラインド")
interior_house_accessory_8.children.create([{ name: "カーテン" },{ name: "ブラインド" },{ name: "ロールスクリーン" },{ name: "のれん" },{ name: "その他" }])

interior_house_accessory_9 = interior_house_accessory.children.create(name: "ライト/照明")
interior_house_accessory_9.children.create([{ name: "蛍光灯/電球" },{ name: "天井照明" },{ name: "フロアスタンド" },{ name: "その他" }])

interior_house_accessory_10 = interior_house_accessory.children.create(name: "寝具")
interior_house_accessory_10.children.create([{ name: "布団/毛布" },{ name: "枕" },{ name: "シーツ/カバー" },{ name: "その他" }])

interior_house_accessory_11 = interior_house_accessory.children.create(name: "インテリア(小物)")
interior_house_accessory_11.children.create([{ name: "ごみ箱" },{ name: "ウェルカムボード" },{ name: "オルゴール" },{ name: "クッション" },{ name: "クッションカバー" },{ name: "スリッパラック" },{ name: "ティッシュボックス" },{ name: "バスケット/かご" },{ name: "フォトフレーム" },{ name: "マガジンラック" },{ name: "モビール" },{ name: "花瓶" },{ name: "灰皿" },{ name: "傘立て" },{ name: "小物入れ" },{ name: "置時計" },{ name: "掛時計/柱時計" },{ name: "鏡(立て掛け式)" },{ name: "鏡(壁掛け式)" },{ name: "置物" },{ name: "風鈴" },{ name: "植物/観葉植物" },{ name: "その他" }])

interior_house_accessory_12 = interior_house_accessory.children.create(name: "季節/年中行事")
interior_house_accessory_12.children.create([{ name: "正月" },{ name: "成人式" },{ name: "バレンタインデー" },{ name: "ひな祭り" },{ name: "子どもの日" },{ name: "母の日" },{ name: "父の日" },{ name: "サマーギフト/お中元" },{ name: "夏/夏休み" },{ name: "ハロウィン" },{ name: "敬老の日" },{ name: "七五三" },{ name: "お歳暮" },{ name: "クリスマス" },{ name: "冬一般" },{ name: "その他" }])

interior_house_accessory_13 = interior_house_accessory.children.create(name: "その他")
interior_house_accessory_13.children.create([{name: "すべて" }])

# 本・音楽・ゲームカテゴリ

book_music_game = Category.create(name: "本・音楽・ゲーム")

book_music_game_1 = book_music_game.children.create(name: "本")
book_music_game_1.children.create([{ name: "文学/小説" },{ name: "人文/社会" },{ name: "ノンフィクション/教養" },{ name: "地図/旅行ガイド" },{ name: "ビジネス/経済" },{ name: "健康/医学" },{ name: "コンピュータ/IT" },{ name: "趣味/スポーツ/実用" },{ name: "住まい/暮らし/子育て" },{ name: "アート/エンタメ" },{ name: "洋書" },{ name: "絵本" },{ name: "参考書" },{ name: "その他"}])

book_music_game_2 = book_music_game.children.create(name: "漫画")
book_music_game_2.children.create([{ name: "全巻セット" },{ name: "少年漫画" },{ name: "少女漫画" },{ name: "青年漫画" },{ name: "女性漫画" },{ name: "同人誌" },{ name: "その他"}])

book_music_game_3 = book_music_game.children.create(name: "雑誌")
book_music_game_3.children.create([{ name: "アート/エンタメ/ホビー" },{ name: "ファッション" },{ name: "ニュース/総合" },{ name: "趣味/スポーツ" },{ name: "その他"}])

book_music_game_4 = book_music_game.children.create(name: "CD")
book_music_game_4.children.create([{ name: "邦楽" },{ name: "洋楽" },{ name: "アニメ" },{ name: "クラシック" },{ name: "K-POP/アジア" },{ name: "キッズ/ファミリー" },{ name: "その他"}])

book_music_game_5 = book_music_game.children.create(name: "DVD/ブルーレイ")
book_music_game_5.children.create([{ name: "外国映画" },{ name: "日本映画" },{ name: "アニメ" },{ name: "TVドラマ" },{ name: "ミュージック" },{ name: "お笑い/バラエティ" },{ name: "スポーツ/フィットネス" },{ name: "キッズ/ファミリー" },{ name: "その他"}])

book_music_game_6 = book_music_game.children.create(name: "レコード")
book_music_game_6.children.create([{ name: "邦楽" },{ name: "洋楽" },{ name: "その他"}])

book_music_game_7 = book_music_game.children.create(name: "テレビゲーム")
book_music_game_7.children.create([{ name: "家庭用ゲーム本体" },{ name: "家庭用ゲームソフト" },{ name: "携帯用ゲーム本体" },{ name: "携帯用ゲームソフト" },{ name: "PCゲーム" },{ name: "その他"}])


# おもちゃ・ホビー・グッズカテゴリ

toy_hobby = Category.create(name: "おもちゃ・ホビー・グッズ")

toy_hobby_1 = toy_hobby.children.create(name: "おもちゃ")
toy_hobby_1.children.create([{ name: "キャラクターグッズ" },{ name: "ぬいぐるみ" },{ name: "小物/アクセサリー" },{ name: "模型/プラモデル" },{ name: "ミニカー" },{ name: "トイラジコン" },{ name: "プラモデル" },{ name: "鉄道模型" },{ name: "その他"}])

toy_hobby_2 = toy_hobby.children.create(name: "タレントグッズ")
toy_hobby_2.children.create([{ name: "アイドル" },{ name: "ミュージシャン" },{ name: "タレント/お笑い芸人" },{ name: "スポーツ選手" },{ name: "その他"}])

toy_hobby_3 = toy_hobby.children.create(name: "")
toy_hobby_3.children.create([{ name: "アイドル" },{ name: "ミュージシャン" },{ name: "タレント/お笑い芸人" },{ name: "模型/プラモデル" },{ name: "ミニカー" },{ name: "トイラジコン" },{ name: "プラモデル" },{ name: "鉄道模型" },{ name: "その他"}])

# コスメ・香水・美容カテゴリ

beauty = Category.create(name: "コスメ・香水・美容" )

# 家電・スマホ・カメラカテゴリ

smart_phone_cam = Category.create(name: "家電・スパホ・カメラ" )

# スポーツ・レジャーカテゴリ

sports_leisure = Category.create(name: "スポーツ・レジャー" )

# チケットカテゴリ

ticket = Category.create(name: "チケット" )

# 自動車・オートバイカテゴリ

car_bike = Category.create(name: "自動車" )

# その他カテゴリ
others = Category.create(name: "その他" )

" },{ name: "