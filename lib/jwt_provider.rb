class JwtProvider
  class << self
    def encode(payload, exp=24.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, Settings.jwt_secret_token)
    end

    def decode(token)
      body = JWT.decode(token, Settings.jwt_secret_token)[0]
      body.with_indifferent_access
    end
  end
end
