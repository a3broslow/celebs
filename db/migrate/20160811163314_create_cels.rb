class CreateCels < ActiveRecord::Migration
  def change
    create_table :cels do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
