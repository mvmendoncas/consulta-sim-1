require "test_helper"

class ConsultaTest < ActiveSupport::TestCase
  test 'criando consulta corretamente' do
    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '706.508.980-01', email: 'rodrigo@andrade.com', especialidade: 'Reumatologista', crm: '123456'
    paciente = Paciente.new nome: 'Joao Jose', cpf: '706.508.980-01', email: 'joao@jose.com' , data_nascimento: '1990-01-01'
    consulta = Consulta.new data: '2019-01-01', horario: '12:00' , medico: medico, paciente: paciente
    assert consulta.errors.messages.empty?
  end

  test 'criando consulta sem data' do
    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '706.508.980-01', email: 'rodrigo@andrade.com', especialidade: 'Reumatologista', crm: '123456'
    paciente = Paciente.new nome: 'Joao Jose', cpf: '706.508.980-01', email: 'joao@jose.com' , data_nascimento: '1990-01-01'
    consulta = Consulta.new horario: '12:00', medico: medico, paciente: paciente
    assert_not consulta.save
  end

end
