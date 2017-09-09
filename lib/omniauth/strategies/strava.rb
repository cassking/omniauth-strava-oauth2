require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Strava < OmniAuth::Strategies::OAuth2
      option :client_options, {
        site: 'https://www.strava.com',
        authorize_url: '/oauth/authorize',
        token_url: '/oauth/token'
      }

      option :access_token_options, {
        header_format: 'Bearer %s',
        param_name: 'access_token'
      }

      uid { raw_info['id'].to_s }

      info do
        {
          email: raw_info['email'],
          firstname: raw_info['firstname'],
          lastname: raw_info['lastname']
        }
      end

      credentials do
        { expires: false }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v3/athlete').parsed
      end
    end
  end
end
