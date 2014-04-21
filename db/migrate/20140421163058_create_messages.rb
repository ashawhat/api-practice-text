class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :To
      t.string :From
      t.string :Body

      t.timestamps
    end
  end
end
