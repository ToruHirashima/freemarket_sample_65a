require 'rails_helper'

describe User do
  describe '#create' do
    # 1. 必須項目が全て存在すれば登録できること
    it "is valid for all" do
      user = build(:user)
      expect(user).to be_valid
    end

    # 2. nicknameが空では登録できないこと
    it "is invalid without a nickname" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    # 3. emailが空では登録できないこと
    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください", "は不正な値です")
    end

    # 4. passwordが空では登録できないこと
    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください", "は7文字以上で入力してください")
    end

    # 5. passwordが存在してもpassword_confirmationが空では登録できないこと
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    # 6. 重複したemailが存在する場合登録できないこと
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    # 7. passwordが7文字以上であれば登録できること
    it "is valid with a password that has more than 7 characters " do
      user = build(:user, password: "0000000", password_confirmation: "0000000")
      user.valid?
      expect(user).to be_valid
    end

    # 8. passwordが6文字以下であれば登録できないこと
    it "is invalid with a password that has less than 6 characters " do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください", "は7文字以上で入力してください")
    end

    # 9. family_nameが半角であれば登録できないこと
    it "is invalid with a family_name that half-width " do
      user = build(:user, family_name: "ﾃｽﾄ")
      user.valid?
      expect(user.errors[:family_name]).to include("は不正な値です")
    end

    # 10. first_nameが半角であれば登録できないこと
    it "is invalid with a first_name that half-width " do
      user = build(:user, first_name: "ﾃｽﾄ")
      user.valid?
      expect(user.errors[:first_name]).to include("は不正な値です")
    end

    # 11. family_name_kanaが半角であれば登録できないこと
    it "is invalid with a family_name_kana that half-width " do
      user = build(:user, family_name_kana: "ﾃｽﾄ")
      user.valid?
      expect(user.errors[:family_name_kana]).to include("は不正な値です")
    end

    # 12. first_name_kanaが半角であれば登録できないこと
    it "is invalid with a first_name_kana that half-width " do
      user = build(:user, first_name_kana: "ﾃｽﾄ")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("は不正な値です")
    end
  end
end