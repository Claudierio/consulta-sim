Given('estou na pagina de medico') do
  visit 'medicos/new'
  expect(page).to have_content('novo medico')
end

Given('o medico com CRM {string} existe') do |crm|
  fill_in 'medico[nome]', :with => 'Joana Montenegro'
  fill_in 'medico[cpf]', :with => '123.456.789-65'
  fill_in 'medico[email]', :with => 'joana@gmail.com'
  fill_in 'medico[especialidade]', :with => 'Pediatra'
  fill_in 'medico[crm]', :with => crm
  click_button 'Create Medico'
  expect(page).to have_content(crm)
end

When('eu clico em remover o medico com CRM {string}') do |crm|
  click_button 'remover medico'
end

Then('eu vejo uma mensagem que o Medico foi removido') do
  expect(page).to have_content('Medico removido com sucesso')
end

When('eu preencho os campos de nome {string}, cpf {string}, email {string}, especialidade {string} e crm {string}') do |string, string2, string3, string4, string5|
  fill_in 'medico[nome]', :with => string
  fill_in 'medico[cpf]', :with => string2
  fill_in 'medico[email]', :with => string3
  fill_in 'medico[especialidade]', :with => string4
  fill_in 'medico[crm]', :with => string5
end

When('eu clico em cadastrar novo medico') do
  click_button 'Create Medico'
end

Then('eu vejo uma mensagem que o medico foi cadastrado com sucesso') do
  expect(page).to have_content('Medico was successfully created.')
end