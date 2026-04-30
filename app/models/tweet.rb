belongs_to:user
# :user_idは、tweetsテーブルの外部キーで、usersテーブルのidを参照
validates :user_id, presence: true
validates :content, presence: true, length: { maximum: 140 }