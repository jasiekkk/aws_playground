Rails.application.configure do
  config.paperclip_defaults = {
    storage: :s3,
    url: ':s3_alias_url',
    s3_host_alias: ENV['AWS_S3_HOST_ALIAS'],
    path: '/:class/:attachment/:id_partition/:style/:filename',
    bucket: ENV['AWS_S3_BUCKET'],
    s3_credentials: {
      access_key_id: ENV['AWS_ACCESS_ID'],
      secret_access_key: ENV['AWS_ACCESS_KEY']
    }
  }
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.js_compressor = :uglifier
  config.assets.compile = false
  config.assets.digest = true
  config.log_level = :debug
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false
end
