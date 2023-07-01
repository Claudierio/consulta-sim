Feature: gerenciar medico
  As a medico
  I want to adicionar, remover, visualizar e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial

  Scenario: cadastrar medico
    Given estou na pagina de medico
    When eu preencho os campos de nome 'Joana Montenegro', cpf '123.456.789-65', email 'joana@gmail.com', especialidade 'Pediatra' e crm '12345'
    And eu clico em cadastrar novo medico
    Then eu vejo uma mensagem que o medico foi cadastrado com sucesso

  Scenario: remover medico
    Given estou na pagina de medico
    And o medico com CRM '12345' existe
    When eu clico em remover o medico com CRM '12345'
    Then eu vejo uma mensagem que o Medico foi removido

