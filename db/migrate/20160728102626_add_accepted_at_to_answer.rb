class AddAcceptedAtToAnswer < ActiveRecord::Migration
  def change
  	add_column :answers, :accepted_at, :timestamp
  end
end
