class AddAttachmentAvatarToAwsUsers < ActiveRecord::Migration
  def self.up
    change_table :aws_users do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :aws_users, :avatar
  end
end
