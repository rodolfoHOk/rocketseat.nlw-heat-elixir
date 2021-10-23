# 🚀 Back-End Elixir do NLW-07 HEAT - RocketSeat 🚀

## 👨‍💻 Tecnologias utilizadas 👩‍💻

- Elixir (Linguagem de Programação)
- Erlang (Linguagem de Programação pela qual o Elixir é compilada)
- Phoenix (Framework para desenvolvimento WEB)
- REST (Arquitetura)

### 🗃️ Bibliotecas utilizadas 📚

- #### Carregadas na criação do projeto com o Phoenix:

  - phoenix
  - phoenix_ecto
  - ecto_sql
  - postgrex
  - phoenix_live_dashboard
  - swoosh
  - telemetry_metrics
  - telemetry_poller
  - gettext
  - jason
  - plug_cowboy

- #### Que inserimos posteriormente:

  - quantum : Biblioteca de agendamento de tarefas para o Elixir

## 💎 Utilizando o Elixir 🔮

### Modelo de MVC no Elixir:

- Verifica a instalação e versão do Elixir: comando "elixir -v"
- Instala o phoenix e a dependência hex: comando "mix archive.install hex phx_new"
- Iniciando o projeto: comando "mix phx_new nome_projeto --no-html --no-assets"
- Configurar o banco de dados nos arquivos: /config/dev.exs e config/test.exs
- Criar o banco de dados: comando "mix ecto.create"
- Rodar o servidor phoenix: comando "mix phx.server"
- Testar se o servidor está rodando: navegador web "http://localhost:4000/dashboard"
- Adicionar rotas: /lib/nome_projeto_web/router.ex
- Criar controller: /lib/nome_projeto_web/controllers/nome_controller_controller.ex
- Gerar migration para o db: commando "mix ecto.gen.migration nome_migration"
- Configurar a migration (criar tabela no db) : /priv/repo/migrations/timestamp_nome_migration.exs
- Criar tabela no db: comando "mix ecto.migrate"
- Criar o schema(model da tabela) / changeset(transforma e valida dados passados para inserção no db): /lib/nome_projeto/nome_schema.ex
- Módulo que utilizamos para trabalhar com o db: /lib/nome_projeto/repo.ex
- Criar contexto (contexto MVC é semelhante a um service em POO): criar pasta /lib/nome_projeto/nome_contexto_mvc
- Criar módulo de ação no db (semelhante a um método de um service em POO): /lib/nome_projeto/nome_contexto_mvc/nome_ação.ex
- Com o módulo de ação no db codificar o controller criado que retornará uma view
- Criar a view utilizada no controller: /lib/nome_projeto_web/views/nome_controller_view.ex

### Concorrência no Elixir:

- Módulo Elixir Task (módulo do Elixir para trabalhar com concorrência)
- Exemplo neste projeto:
  - Criamos um módulo de ação get ao banco de dados: /lib/nome_projeto/nome_contexto_mvc/get.ex
  - Criamos um novo contexto (no caso não mvc): criar pasta /lib/nome_projeto/nome_novo_contexto
  - Criamos um módulo no contexto : /lib/nome_projeto/nome_novo_contexto/nome_modulo.ex (no caso /lib/heat_tags/tags/count.ex)
  - Neste módulo utilizamos o método async_stream do módulo de concorrência Task (no caso pegamos as mensagens recebidas do dia no banco de dados, criamos a concorrência que conta as palavras das mensagem, pega todos os retornos das concorrências e reduz somando todas as palavras contadas por cada uma das concorrências)
  - instalamos a biblioteca quantum que rodará este módulo com o agendamento de uma vez por dia.

## 🚀 Todos os projetos criados no evento: 🚀

### 🔗 Link para o projeto do Back-End Node no Github 🗄️

https://github.com/rodolfoHOk/nlw-heat-node

### 🔗 Link para o projeto do Front-End Web no Github 🖥️

https://github.com/rodolfoHOk/nlw-heat-web

### 🔗 Link para o projeto do Front-End Mobile no Github 📱

https://github.com/rodolfoHOk/nlw-heat-mobile

### 🔗 Link para o projeto do Front-End Elixir no Github 🏷️

https://github.com/rodolfoHOk/nlw-heat-elixir

## ℹ️ Como iniciar o projeto Elixir / Phoenix clonado do github ℹ️

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## 📃 Aprenda mais 📃

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix
