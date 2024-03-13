# Testes Automatizados com Cucumber, Capybara e Ruby    

Este projeto implementa testes automatizados para uma página web, utilizando um conjunto de ferramentas no ecossistema Ruby: Cucumber, Capybara, SitePrism, e DotEnv para o gerenciamento de configurações de ambiente através de variáveis.

## Ferramentas Utilizadas

- **Cucumber**: Uma ferramenta que suporta o desenvolvimento guiado por comportamento (BDD), permitindo a escrita de testes em uma linguagem natural e acessível.
- **Capybara**: Um framework que facilita a simulação de interações do usuário com uma aplicação web, utilizado drivers que controlam navegadores web.
- **SitePrism**: Fornece um DSL (Domain Specific Language) para a criação de Page Objects, melhorando a organização e manutenção dos testes.
- **Dotenv**: Carrega variáveis de ambiente de um arquivo `.env`, ideal para armazenar variáveis de ambiente.

## Pré-Requisitos

Antes de começar, certifique-se de que o Ruby esteja instalado e configurado corretamente em seu sistema.

### Instalação do Ruby

A instalação do Ruby pode variar dependendo do sistema operacional. Seguem alguns links úteis para a instalação em diferentes sistemas:

- **Windows**: [RubyInstaller](https://rubyinstaller.org/)
- **Linux/UNIX**: É recomendado usar um gerenciador de versões como [rbenv](https://github.com/rbenv/rbenv) ou [RVM](https://rvm.io/). Instruções de instalação podem ser encontradas nos respectivos sites.
- **macOS**: O Ruby já vem instalado, mas você pode usar [rbenv](https://github.com/rbenv/rbenv) ou [RVM](https://rvm.io/) para gerenciar versões diferentes, recomendado usar a última versão estável disponível.

## Configuração do Projeto

1. Clone o repositório do projeto:

   ```bash
   git clone [URL_DO_PROJETO]
   cd [NOME_DO_PROJETO]
   ```

2. Instale as dependências do projeto:

    ```bash
    bundle install
    ```

## Executando os testes
```bash
cucumber
```

Ao fim da execução, você encontrará um relatório em /reports.
