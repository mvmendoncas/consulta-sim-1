require "test_helper"

class PacienteTest < ActiveSupport::TestCase

  test 'criando paciente corretamente' do
    paciente = Paciente.new nome: 'Joao Jose', cpf: '706.508.980-01', email: 'ricardo@joao.com', data_nascimento: '1990-01-01'
    assert paciente.save
  end

  test 'criando paciente sem nome' do
    paciente = Paciente.new cpf: '706.508.980-01', email: 'karlos@kaio.com', data_nascimento: '1990-01-01'
    assert_not paciente.save
  end

end
