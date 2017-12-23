class Deletecompetence < ActiveRecord::Migration[5.1]
  def change
    drop_table :competences

    end
  end
