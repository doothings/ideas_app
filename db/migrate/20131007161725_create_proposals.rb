class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :thought
      t.text :abstract
      t.text :description
      t.boolean :sponsored
      t.integer :status

      t.timestamps
    end
  end
end
