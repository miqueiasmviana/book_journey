class CreateReads < ActiveRecord::Migration[7.1]
  def change
    create_table :reads do |t|
      t.string :stating_type

      t.timestamps
    end
  end
end
