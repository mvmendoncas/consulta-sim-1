Given('estou na pagina de paciente') do
  visit 'pacientes/new'
  expect(page).to have_content('New paciente')
end
Given('o paciente com CPF {string} existe') do |cpf|
  fill_in 'paciente[nome]', :with => 'Rodrigo Andrade'
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => 'rodrigo@andrade.com'
  fill_in 'paciente[telefone]', :with => '999999999'
  fill_in 'paciente[sexo]', :with => 'Masculino'
  fill_in 'paciente[idade]', :with => '20'
  fill_in 'paciente[altura]', :with => '1.80'
  fill_in 'paciente[peso]', :with => '80'
  click_button 'Create Paciente'
  expect(page).to have_content(cpf)
end
When('eu clico em remover o paciente com CPF {string}') do |cpf|
  click_button 'Destroy this paciente'
end
Then('eu vejo uma mensagem que o paciente foi apagado com sucesso') do
  expect(page).to have_content('Paciente was successfully destroyed')
end

When('eu preencho os campos de nome {string}, cpf {string}, email {string}, telefone {string}, sexo {string}, idade {string}, altura {string} e peso {string}') do |string, string2, string3, string4, string5, string6, string7, string8|
  fill_in 'paciente[nome]', :with => string
  fill_in 'paciente[cpf]', :with => string2
  fill_in 'paciente[email]', :with => string3
  fill_in 'paciente[telefone]', :with => string4
  fill_in 'paciente[sexo]', :with => string5
  fill_in 'paciente[idade]', :with => string6
  fill_in 'paciente[altura]', :with => string7
  fill_in 'paciente[peso]', :with => string8
end

When('eu clico em cadastrar novo paciente') do
  click_button 'Create Paciente'
end

Then('eu vejo uma mensagem que o paciente foi cadastrado com sucesso') do
  expect(page).to have_content('Paciente was successfully created.')
end
