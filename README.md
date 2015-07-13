#Cafe Yeondoo

The website of the best cafe, [Cafe Yeondoo](http://yeondoo.kr), in Samcheong-dong area, Seoul, Korea. It is based on Ruby On Rails and some horrible codes by [Lee Han Kyeol](http://leehankyeol.me).

##Installation

1. Install gems.
2. Migrate database and populate it with seeds on production.
3. Configure asset pipeline on production.
4. Replace default token at `config/secrets.yml` with your own token.
>production:
>
>  facebook_page_token: YOUR_FACEBOOK_TOKEN
5. Restart Unicorn and nginx.
6. Boom!