class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.references :creator
      t.string     :title
      t.text       :description

      t.timestamps
    end
  end
end
