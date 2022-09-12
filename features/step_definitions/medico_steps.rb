Given('estou na pagina de medico') do
  visit 'medicos/new'
  expect(page).to have_content('New medico')
end

When('eu preencho os campos de nome {string}, crm {string} e email {string}') do |string, string2, string3|
  fill_in 'medico[nome]', :with => string
  fill_in 'medico[crm]', :with => string2
  fill_in 'medico[email]', :with => string3
end

When('eu clico em cadastrar novo medico') do
  click_button 'Create Medico'
end

Then('eu vejo uma mensagem que o medico foi cadastrado com sucesso') do
  expect(page).to have_content('Medico was successfully created.')
end

Given('o medico com CRM {string} existe') do |crm|
  fill_in 'medico[nome]', :with => 'Rodrigo Andrade'
  fill_in 'medico[crm]', :with => crm
  fill_in 'medico[email]', :with => 'rodrigo@andrade.com'
end

When('eu clico em mostrar o medico com CRM {string}') do |crm|
  click_button 'Show this medico'
end

Then('eu vejo os dados do medico com CRM {string}') do |crm|
  expect(page).to have_content(crm)
end