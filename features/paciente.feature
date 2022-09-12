Feature: Paciente
  As a paciente
  I want to adicionar, remover, visualizar e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial

    Scenario: Adicionar paciente
        Given que eu estou na pagina de cadastro de paciente
        When eu preencho os campos com os dados do paciente
        And eu clico em "Adicionar"
        Then eu vejo uma mensagem de sucesso
        And eu vejo o paciente na lista de pacientes

    Scenario: Remover paciente
        Given que eu estou na pagina de cadastro de paciente
        When eu clico em "Remover"
        Then eu vejo uma mensagem de sucesso
        And eu nao vejo o paciente na lista de pacientes