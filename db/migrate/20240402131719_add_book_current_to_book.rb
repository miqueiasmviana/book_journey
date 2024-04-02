class AddBookCurrentToBook < ActiveRecord::Migration[7.1]
  def change
    add_reference :books, :current_type, null: false, foreign_key: true
  end
end
