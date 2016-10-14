[![CircleCI](https://circleci.com/gh/aalvesjr/teste-d.svg?style=svg)](https://circleci.com/gh/aalvesjr/teste-d)

O Script *"exercicio"* visa calcular o saldo de uma conta corrente, de acordo com seu saldo inicial, utilizando um arquivo com as contas e seus saldos iniciais, por exemplo: "files/contas.csv", e um arquivo de transações por conta (depósito ou débito baseado no ID da conta), cada linha desse segundo arquivo é uma transação a ser executada e após aplicar as transações descritas no arquivo, por exemplo "files/transacoes.csv" será gerado o arquivo "saldo.csv" na mesma pasta do script 'exercicio' alem do resultado também ser exibido na tela.

## Modo de usar

Executar os seguintes passos no terminal:

```
git clone https://github.com/aalvesjr/teste-d.git
cd teste-d
bundle install

./exercicio path/to/contas.csv path/to/transacoes.csv
```

## Pré-requisitos
  - **Ruby:** o script foi feito utilizando a linguagem Ruby, caso não tenha certeza se ela esta instalada na sua maquina, execute no terminal (no linux):

```
which ruby
```

Caso o resultado exibido seja algo diferente de `/usr/bin/ruby` será preciso alterar a primeira linha do script de acordo com a saida do terminal

```
#!/usr/bin/ruby
```

  - **MiniTest: (opcional)** é somente necessário caso você queira rodar os testes do exercício, os testes estão utilizando a gem *'minitest'*, para instala-la execute no terminal:

```
gem install minitest
```

Versão do minitest utilizada nos testes: *'5.9.0'*

os testes estão armazenados na pasta `test/` para executar o teste da classe *'account'* por exemplo execute:

```
ruby test/account_test.rb
```

  - **Rake: (opcional)** é somente necessário caso você queira rodar todos os estes em um unico comando, foi criada uma task para rodar todos os testes da pasta *'test/'* de uma única vez:

```
gem install rake
```

Versão do rake utilizada nos testes: *'11.1.2'*

Para rodar todos os testes execute no terminal:

```
rake test
```

  - **Bundler: (opcional)** é somente necessário caso você queira usar o comando `bundle install` para gerenciaras dependências do projeto, descritas nos arquivos Gemfile e Gemfile.lock, para instalar a gem execute:

```
gem install bundler
```

Versão do bundler utilizada durante os testes: *'1.12.5'*

## Considerações

  - Alem da saida do terminal (stdout), o script também gera um arquivo chamado "saldo.csv" com os mesmos dados exibidos como resultado.
  - A validação atual *apenas* descarta os dados inválidos (id ou valores alfanumérico)
  - Atualmente ao ler o arquivo de contas, caso o mesmo ID apareça mais de uma vez, o valor inicial a ser usado será o ultimo que foi lido.

## Possíveis alterações no futuro

  - A classe Account poderia ter sido separada do calculo da multa, mas como o exercício tem um escopo limitado, a principio não pareceu ser um grande problema manter esse único cálculo nessa classe por enquanto.
  - Após o descarte de algum dado considerado *inválido*, exibir para o usuário os dados que estão sendo descartados, e se deseja continuar a execução do script.
  - A única tratativa sobre os arquivos é a necessidade de precisar receber dois arquivos, caso os arquivos passados não existam, o erro é gerado pelo ruby, mas poderia ter uma mensagem mais amigavel para o usuário.
