class Task < ApplicationRecord
  validates :content, presence: {message: "タスクを入力してね"}, length: { maximum: 255, :message => "長すぎるよ！255文字以内にしてね" }
  validates :status, presence: {message: "ステータスを選択してね"}, length: { maximum: 10 }
end
