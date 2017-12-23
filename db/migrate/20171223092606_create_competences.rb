class CreateCompetences < ActiveRecord::Migration[5.1]
  def change
    create_table :competences do |t|
      t.string :title, null: false, limit:50
      t.text :description

      t.timestamps
    end
  end
end
