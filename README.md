O Script "exercicio" visa calcular o saldo de uma conta corrente, de acordo com seu saldo inicial, utilizando o arquivo "contas.csv" para obter esse valor e calculando o saldo final, após aplicar as transações descritas no arquivo "transações.csv" ambos dentro da pasta "files/"

## Pré-requisitos
  - **Ruby:** o script foi feito utilizando a linguagem Ruby, caso não tenha certeza se ela esta instalada na sua maquina, execute no terminal (no linux):

```
which ruby
```

Caso o resultado exibido seja algo diferente de `/usr/bin/ruby` será preciso alterar a primeira linha do script de acordo com a saida do terminal

```
#!/usr/bin/ruby
```

Alem da saida do terminal (stdout), o script também gera um arquivo chamado "saldo.csv" com os mesmos dados exibidos como resultado.
