require 'active_job'
require 'openssl'

ActiveJob::Base.queue_adapter = :resque

redis_url = 'rediss://pub-redis-18651.ap-southeast-1-1.1.ec2.garantiadata.com:18651/segantii'
#redis_url = 'redis://localhost:6379/segantii'


if redis_url =~ /rediss/
  $redis = Redis.new(url: redis_url,
               use_ssl: true,
               ssl_ca_file: 'garantia_ca.pem',
               ssl_key: OpenSSL::PKey::RSA.new(File.open('garantia_user_private.key')),
               ssl_cert: OpenSSL::X509::Certificate.new(File.open('garantia_user.crt')),
               ssl_verify_mode: OpenSSL::SSL::VERIFY_PEER,
               password: 'D3v@segant11'
               )
else
  $redis = Redis.new(url: redis_url)
end

$logger = ActiveSupport::Logger.new(STDOUT)
$redis.client.logger = $logger

Resque.redis = $redis

