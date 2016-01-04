class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :box1, default: "_"
      t.string :box2, default: "_"
      t.string :box3, default: "_"
      
      t.string :box4, default: "_"
      t.string :box5, default: "_"
      t.string :box6, default: "_"
      
      t.string :box7, default: "_"
      t.string :box8, default: "_"
      t.string :box9, default: "_"
      
      t.string :player1_human_or_ai, default: "human"
      t.string :player2_human_or_ai, default: "ai"
      
      t.string :player1_role
      t.string :player2_role
      
      t.timestamp null: false
      
    end
  end
end
