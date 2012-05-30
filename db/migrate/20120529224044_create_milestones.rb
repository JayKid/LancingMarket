class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.primary_key :id
      t.integer :number
      t.decimal :import
      t.text :description

      t.timestamps
    end
  end
end