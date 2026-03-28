name: Pipeline Experimental
on: push

# 2 - Definição dos Jobs
jobs:
  ci-continuous-integracion:
    name: Teste de CI
    runs-on: ubuntu-22.04
    steps:
        -run: echo "Olá, Fatec!"
          name: Mensagem Especial
        - uses: actions/checkout@v5
          name: Faxendo Clone e Checkout no meu repositorio nesta máquina virtual
        - name: Zipar os arquivos do meu repositorio
          run: zip -r arquivo.zip .
        - name: listar os arquivos do meu repositorio
          run: ls -la
