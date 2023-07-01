Given('estou na pagina de paciente') do
  visit 'pacientes/new'
  expect(page).to have_content('novo paciente')
end

Given('o paciente com cpf {string} existe') do |cpf|
  fill_in 'paciente[nome]', with: 'Joana Montenegro'
  fill_in 'paciente[dataNascimento]', with: '1990-01-01'
  fill_in 'paciente[cpf]', with: cpf
  fill_in 'paciente[email]', with: 'joana@gmail.com'
  fill_in 'paciente[endereco][logradouro]', with: 'Rua A'
  fill_in 'paciente[endereco][complemento]', with: 'Apto 123'
  fill_in 'paciente[endereco][cep]', with: '12345-678'
  fill_in 'paciente[endereco][bairro]', with: 'Centro'
  fill_in 'paciente[endereco][cidade]', with: 'Sao Paulo'
  click_button 'Enviar'
  expect(page).to have_content(cpf)
end

When('eu clico em remover o paciente com cpf {string}') do |cpf|
  click_button "remover-paciente-#{cpf}"
end

Then('eu vejo uma mensagem que o paciente foi apagado com sucesso') do
  expect(page).to have_content('Paciente apagado com sucesso')
end

When('eu preencho os campos de nome {string}, data de nascimento {string}, cpf {string}, email {string}, logradouro {string}, complemento {string}, cep {string}, bairro {string} e cidade {string}') do |nome, data_nascimento, cpf, email, logradouro, complemento, cep, bairro, cidade|
  fill_in 'paciente[nome]', with: nome
  fill_in 'paciente[dataNascimento]', with: data_nascimento
  fill_in 'paciente[cpf]', with: cpf
  fill_in 'paciente[email]', with: email
  fill_in 'paciente[endereco][logradouro]', with: logradouro
  fill_in 'paciente[endereco][complemento]', with: complemento
  fill_in 'paciente[endereco][cep]', with: cep
  fill_in 'paciente[endereco][bairro]', with: bairro
  fill_in 'paciente[endereco][cidade]', with: cidade
end

When('eu clico em cadastrar novo paciente') do
  click_button 'Enviar'
end

Then('eu vejo uma mensagem que o paciente foi cadastrado com sucesso') do
  expect(page).to have_content('Cadastro criado com sucesso')
end
