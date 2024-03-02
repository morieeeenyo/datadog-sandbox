class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|

      t.string :content, null: false, comment: "ツイートの内容"
      t.timestamps
    end
  end
end
