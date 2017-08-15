class AddAvatarToAwsUser < ActiveRecord::Migration
  def change
    add_column :aws_users, :avatar, :string
  end
end
