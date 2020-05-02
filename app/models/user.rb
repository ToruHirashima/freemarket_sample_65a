class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    # sns認証したことがあればアソシエーションで取得
    # 無ければemailでユーザー検索して取得orビルド(保存はしない)
    user = sns.user || User.where(email: auth.info.email).first_or_initialize(
      nickname: auth.info.name,
        email: auth.info.email
    )
    # userが登録済みの場合はそのままログインの処理へ行くので、ここでsnsのuser_idを更新しておく
    if user.persisted?
      sns.user = user
      sns.save
    end
    { user: user, sns: sns }
  end
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

  has_many :sns_credentials

  # association
  has_many :items
  has_one :address, dependent: :destroy
  has_many :orders
  has_many :comments, dependent: :destroy
  # has_many :likes, dependent: :destroy
  has_one :card, dependent: :destroy
  # has_one :sns_credential, dependent: :destroy

  # validation
  validates :nickname, presence: true, length: { maximum: 255 }
  validates :email, format: { with: /\A([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+/i}, presence: true, uniqueness: true
  validates :password, presence: true
  validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }, presence: true, length: { maximum: 255 }
  validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }, presence: true, length: { maximum: 255 }
  validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/}, presence: true, length: { maximum: 255 }
  validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/}, presence: true, length: { maximum: 255 }
  validates :birthday, presence: true
end
