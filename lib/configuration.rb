module Quickbooks
  class Configuration
    def self.set_tokens_and_realm_id(token, secret, realm_id)
      Thread.current[:token]    = token
      Thread.current[:secret]   = secret
      Thread.current[:realm_id] = realm_id
    end

    def self.set_oauth_consumer(oauth_consumer)
      $qb_oauth_consumer = oauth_consumer
    end
  end
end