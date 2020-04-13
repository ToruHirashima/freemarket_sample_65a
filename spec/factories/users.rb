FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"jjj@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    family_name           {"手巣都"}
    first_name            {"隆"}
    family_name_kana      {"テスト"}
    first_name_kana       {"タカシ"}
    birthday              {"1980-10-30"}
  end

end