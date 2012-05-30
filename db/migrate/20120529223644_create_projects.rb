class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.primary_key :id
      t.string :name
      t.string :version
      t.text :description

      t.timestamps
    end
  end
end
