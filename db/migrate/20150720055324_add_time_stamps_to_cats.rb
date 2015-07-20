class AddTimeStampsToCats < ActiveRecord::Migration
  def change
    add_column :cats, :timestamps, :datetime
  end
end
