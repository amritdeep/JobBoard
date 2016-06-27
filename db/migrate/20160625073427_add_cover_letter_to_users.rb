class AddCoverLetterToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cover_letter, :string
  end
end
