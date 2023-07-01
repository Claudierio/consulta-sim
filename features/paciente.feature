Feature gerenciar paciente
  As a paciente
  I want to adicionar, remover, visualizar e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial

  Scenario: cadastrar paciente
    Given estou na pagina de paciente
    When eu preencho os campos de nome 'Maria Silva', data de nascimento '1990-01-01', cpf '987.654.321-01', email 'maria@example.com', logradouro 'Rua A', complemento 'Apto 123', cep '12345-678', bairro 'Centro' e cidade 'São Paulo'
    And eu clico em cadastrar novo paciente
    Then eu vejo uma mensagem que o paciente foi cadastrado com sucesso

  Scenario: remover paciente
    Given estou na pagina de paciente
    And o medico com CRM '12345' existe
    When eu clico em remover o paciente com cpf '987.654.321-01'
    Then eu vejo uma mensagem que o paciente foi apagado com sucesso
