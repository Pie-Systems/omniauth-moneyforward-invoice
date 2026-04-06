require 'omniauth-oauth2'

OmniAuth.config.add_camelization('moneyforward_invoice', 'MoneyForwardInvoice')

module OmniAuth
  module Strategies
    class MoneyForwardInvoice < OmniAuth::Strategies::OAuth2
      option :client_options,
             site: 'https://api.biz.moneyforward.com',
             authorize_url: '/authorize',
             token_url: '/token'

      option :name, 'moneyforward_invoice'

      def authorize_params
        super.tap do |params|
          params[:scope] = request.params['scope'] if request.params['scope']
        end
      end
    end
  end
end
