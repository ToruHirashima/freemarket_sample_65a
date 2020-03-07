## users_table		
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|Email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birthday_year|integer|null: false|
|birthday_month|integer|null: false|
|birthday_day|integer|null: false|

### Association		
- has_many  :items		
- has_one  :address		
- has_many  :orders		
- has_many  :comments		
- has_many  :likes		
- has_one  :sns_credential		
		
## items_table		
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|text|text|null: false|
|category_id|references|null: false, FK: true|
|size_id|references|null: false, FK: true|
|brand_id|references|null: false, FK: true|
|condition|integer|null: false|
|price|integer|null: false|
|seller_id|references|null: false, FK:  true|
|status|integer|null: false|

### Association		
- belongs_to  :user		
- has_many  :images		
- has_one :delivery		
- has_one  :order		
- has_many  :comments		
- has_many  :likes		
- belongs_to  :category		
- has_one  :size through:  :category_size 		
- belongs_to  :category_size		
- has_one  :brand  through:  :category_brand		
- belongs_to  :brand		
		
## addresses_table		
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, FK: true|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|zip_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|adress1|string|null: false|
|adress2|string|null: false|
|telephone|integer||	

### Association		
- belongs_to  :user		
		
## orders_table
|Column|Type|Options|
|------|----|-------|		
|buyer_id|references|null: false, FK:  true|
|item_id|references|null: false, FK: true|

### Association		
- belongs_to  :user		
- belongs_to  :item		
		
## comments_table
|Column|Type|Options|
|------|----|-------|	
|user_id|references|null: false, FK: true|
|item_id|references|null: false, FK: true|
|comment|text|null: false|

### Association		
- belongs_to  :user		
- belongs_to  :item		
		
## likes_table
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, FK: true|
|item_id|references|null: false, FK: true|

### Association		
- belongs_to  :user		
- belongs_to  :item		
		
## deliveries_table
|Column|Type|Options|
|------|----|-------|
|fee_burden|integer|null: false|
|service|integer|null: false|
|area|string|null: false|
|handling_time|integer|null: false|
|item_id|references|null: false, FK: true|

### Association		
- belongs_to  :item		
		
## image_table
|Column|Type|Options|
|------|----|-------|
|item_id|references|null|false, FK: true|
|url|string|null: false|

### Association		
belongs_to  :item		
		
## categories_table
|Column|Type|Options|
|------|----|-------|
|category|string|null: false|
|path_id|string|null: false|

### Association		
- has_many :items		
- has_many  :sizes, through:  :categories_sizes		
- belongs_to  :categories_sizes		
- has_many  :brand  through:  :categories_brands	
- belongs_to  :categories_brands
		
## sizes_table
|Column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association		
- has_many  :categories  through:  :categories_sizes
- belongs_to  :categories_sizes
		
## categories_sizes_table
|Column|Type|Options|
|------|----|-------|
|category_id|integer|null: false|
|size_id|integer|null: false|

### Association		
- has_many  :categories  through:  :categories_sizes		
- belongs_to  :categories_sizes		
		
## brand_table
|Column|Type|Options|
|------|----|-------|
|brand|string|null: false|

### Association		
- has_many  :categories  through:  :categories_brands		
- belongs_to  :categories_brands		
		
## categories_brands_table
|Column|Type|Options|
|------|----|-------|
|category_id|integer|null: false|
|brand_id|integer|null: false|

### Association		
- has_many  :categories  through:  :categories_brands		
- belongs_to  :categories_brands		
		
## sns_credential_tableテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|ユーザーID|integer|	
|Provider|integer|null: false|
|uid|string|null: false|

### Association		
- belongs_to  :user