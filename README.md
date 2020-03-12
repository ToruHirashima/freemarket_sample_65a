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
- has_one  :address,  dependent::destroy		
- has_many  :orders		
- has_many  :comments, dependent::destroy	
- has_many  :likes, dependent::destroy
- has_one  :card, dependent::destroy		
- has_one  :sns_credential, dependent::destroy		
		
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
|delivery_id|references|null: false, FK:true|
|seller_id|references|null: false, FK:  true|
|status|integer|null: false|

### Association		
- belongs_to  :user		
- has_many  :images, dependent::destroy		
- has_one :delivery, dependent::destroy		
- has_one  :order		
- has_many  :comments, dependent::destroy		
- has_many  :likes, dependent::destroy		
- belongs_to  :category		
- belongs_to  :size 		
- belongs_to  :brand				
		
## addresses_table		
|Column|Type|Options|
|------|----|-------|
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
|user_id|references|null: false, FK: true|	

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
|item_id|references|null false, FK: true|
|url|string|null: false|

### Association		
belongs_to  :item		
		
## categories_table
|Column|Type|Options|
|------|----|-------|
|category|string|null: false|
|ancestry|string||

### Association		
- has_many :items		
- has_many :sizes, through:  :categories_sizes		
- has_many :categories_sizes		
- has_many :brands  through:  :categories_brands	
- has_many :categories_brands
		
## sizes_table
|Column|Type|Options|
|------|----|-------|
|kind-size|string|null: false|
|ancestry|string||

### Association
- has_many :items		
- has_many :categories  through:  :categories_sizes
- has_many :categories_sizes
		
## categories_sizes_table
|Column|Type|Options|
|------|----|-------|
|category_id|integer|null: false|
|size_id|integer|null: false|

### Association		
- belongs_to :category		
- belongs_to :size		
		
## brands_table
|Column|Type|Options|
|------|----|-------|
|brand|string|null: false|

### Association	
- has_many :items	
- has_many :categories  through:  :categories_brands		
- has_many :categories_brands		
		
## categories_brands_table
|Column|Type|Options|
|------|----|-------|
|category_id|integer|null: false|
|brand_id|integer|null: false|

### Association		
- belongs_to  :category		
- belongs_to  :brand

## cards_table
|Column|Type|Options|
|------|----|-------|
|user_id|references|null false, FK: true|
|customer_id|string|null false|
|credit_id|string|null false|

### Association		
- belongs_to  :user
		
## sns_credential_table
|Column|Type|Options|
|------|----|-------|
|user_id|references|null false, FK: true|	
|Provider|integer|null: false|
|uid|string|null: false|

### Association		
- belongs_to  :user