class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :original
      t.string :short
      t.timestamps
    end
  end
end
