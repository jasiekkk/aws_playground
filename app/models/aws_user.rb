class AwsUser < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: ActionController::Base.helpers.asset_path('missing.png')
  validates_attachment_content_type :avatar, content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif', 'application/pdf']
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
