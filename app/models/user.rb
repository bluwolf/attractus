class User < ActiveRecord::Base
  has_secure_password

  has_many :messages

  has_attached_file :avatar, styles: {
    thumb: "-gravity Center -crop 300x300+0+0 +repage -resize 100x100^",
    square: '200x200#',
    medium: '300x300>',
  },
  storage: :s3,
  s3_region: ENV['AWS_REGION'],
  s3_credentials: {
    :bucket => 'attractus',
    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
  },
  path: '/:class/:attachment/:id_partition/:style/:filename',
  url: 's3_domain_url',
  s3_host_name: 's3-us-west-2.amazonaws.com' ,
  default_url:  '/avatars/thumb/missing.png'

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
