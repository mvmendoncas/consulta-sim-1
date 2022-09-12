require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'criando medico corretamente' do
    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '706.508.980-01', email: 'rodrigo@rodrigo.com',
                        especialidade: 'Reumatologista', crm: '123456'
    assert medico.save
  end

  test 'criando medico sem nome' do
    medico = Medico.new cpf: '706.508.980-01', email: 'joao@jose.com'
    assert_not medico.save
  end

  test 'criando medico sem cpf' do
    medico = Medico.new nome: 'Joao Jose', email: 'roberto@ricardo.com'
    assert_not medico.save
    end




end

