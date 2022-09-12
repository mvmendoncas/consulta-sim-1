Feature: Medico
  As a medico
  I want to adicionar, remover, visualizar e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial

    Scenario: Adicionar cadastro
        Given que eu estou na pagina de cadastro
        When eu preencho os campos com os dados corretos
        And eu clico em "Adicionar"
        Then eu vejo uma mensagem de sucesso
        And eu vejo meu cadastro na lista de medicos

    Scenario: Visualizar cadastro
        Given que eu estou na pagina de cadastro
        When eu clico em "Visualizar"
        Then eu vejo os dados do meu cadastro