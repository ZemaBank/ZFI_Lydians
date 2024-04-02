![image](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)

# M2Y Lydians

GEM para comunicação com rotinas da [Lydians](https://soapix-hml.zemafinanceira.com/).

## Instalação

Para instalar a GEM, adicione a linha abaixo no Gemfile do seu projeto.

```ruby
gem 'm2y_lydians'
```

E então execute:

    $ bundle install

Ou você também pode instalar a GEM diretamente:

    $ gem install m2y_lydians

## Como usar

Cria um arquivo `lydians.rb` no diretório `config/initializers` com o seguinte conteúdo:

```ruby
M2yLydians.configure do |config|
  config.certification = "Certificado da Lydians"
  config.server_url = "URL do servidor da Lydians"
  config.pix_server_url = "URL PIX do servidor da Lydians"
  config.pix_certification = "Certificado PIX da Lydians"
  config.env = Rails.env.production? ? 'PRD' : 'HMG'
end
```

e então use os métodos da GEM onde forem necessários:

```ruby
M2yLydians::Billet.generate_billet(body)
...
M2yLydians::Pix.get_pix_banks
...
M2yLydians::Transaction.cancel_transaction(body)
...
```

## Licença

[MIT License](https://opensource.org/licenses/MIT).
