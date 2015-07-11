class CreateCanvases < ActiveRecord::Migration
  def change
    create_table :canvases do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :name, null: false
      t.text :problem
      t.text :solution
      t.text :key_metrics
      t.text :uvp
      t.text :unfair_advantage
      t.text :channels
      t.text :customer_segments
      t.text :cost_structure
      t.text :revenue_streams

      t.timestamps null: false
    end
  end
end
