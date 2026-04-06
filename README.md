# OmniAuth::MoneyForward::Invoice

OmniAuth OAuth2 strategy for Money Forward Cloud Invoice API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-moneyforward-invoice'
```

And then execute:

    $ bundle

## Usage

```
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :moneyforward_invoice,
           ENV['MF_INVOICE_CLIENT_ID'],
           ENV['MF_INVOICE_CLIENT_SECRET'],
           scope: ENV.fetch('MF_INVOICE_SCOPE')
end
```

`scope` is optional. You can override it per request by including `scope` in the authorization request query params.

This strategy uses Money Forward's shared OAuth 2.0 endpoints documented here:

- https://developers.biz.moneyforward.com/docs/common/oauth/overview/
- https://developers.biz.moneyforward.com/docs/api/auth/authorize/

The configured OAuth endpoints are:

- Authorize: `https://api.biz.moneyforward.com/authorize`
- Token: `https://api.biz.moneyforward.com/token`

Use the scope required by the current Money Forward Cloud Invoice API documentation for your integration.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
