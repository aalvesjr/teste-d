O Script *"exercicio"* visa calcular o saldo de uma conta corrente, de acordo com seu saldo inicial, utilizando o arquivo "contas.csv" para obter esse valor e calculando o saldo final, após aplicar as transações descritas no arquivo "transações.csv" ambos dentro da pasta "files/"

## Pré-requisitos
  - **Ruby:** o script foi feito utilizando a linguagem Ruby, caso não tenha certeza se ela esta instalada na sua maquina, execute no terminal (no linux):

```
which ruby
```

Caso o resultado exibido seja algo diferente de `/usr/bin/ruby` será preciso alterar a primeira linha do script de acordo com a saida do terminal

```
#!/usr/bin/ruby
```

  - **MiniTest:** os testes estão utilizando a gem *'minitest'*, para instala-la execute no terminal:

```
gem install minitest
```

Nos exemplos foi utilizada a versão *'5.9.0'* da gem.

os testes estão armazenados na pasta `test/` para executar o teste da classe *'account'* por exemplo execute:

```
ruby test/account_test.rb
```

  - **Rake:** criada uma task para rodar todos os testes da pasta *'test/'* de uma única vez:

```
gem install rake
```

Versão utilizada nos testes: *'11.1.2'*

Para rodar todos os testes execute no terminal:

```
rake test
```

## Considerações

  - Alem da saida do terminal (stdout), o script também gera um arquivo chamado "saldo.csv" com os mesmos dados exibidos como resultado.
  - A validação atual *apenas* descarta os dados inválidos (id ou valores alfanumérico)
  - Atualmente ao ler o arquivo de contas, caso o mesmo ID apareça mais de uma vez, o valor inicial a ser usado será o ultimo que foi lido.

## Possíveis alterações no futuro

  - A classe Account poderia ter sido separada do calculo da multa, mas como o exercício tem um escopo limitado, a principio não pareceu ser um grande problema manter esse único cálculo nessa classe por enquanto. 
  - Após o descarte de algum dado considerado *inválido*, exibir para o usuário os dados que estão sendo descartados, e se deseja continuar a execução do script.
