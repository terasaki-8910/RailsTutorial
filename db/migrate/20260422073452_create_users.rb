class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :nickname
      t.string :name
      t.string :image

      t.timestamps
    end
    # tweetsテーブルのuser_idとcreated_atにインデックスを追加
    add_index :tweets, [:user_id, :created_at]
  end
end
