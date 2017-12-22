class Task < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: {message: "タスクを入力してね"}, length: { maximum: 255, :message => "長すぎるよ！255文字以内にしてね" }
  validates :status, presence: {message: "ステータスを選択してね"}, length: { maximum: 10 }
end
