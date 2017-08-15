Rails.application.configure do
  config.paperclip_defaults = {
    storage: :s3,
    url: ':s3_alias_url',
    s3_host_alias: ENV['S3_HOST_ALIAS'],
    path: '/:class/:attachment/:id_partition/:style/:filename',
    bucket: ENV['S3_BUCKET'],
    s3_credentials: {
      access_key_id: ENV['AWS_ID'],
      secret_access_key: ENV['AWS_KEY']
    }
  }
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true
end
