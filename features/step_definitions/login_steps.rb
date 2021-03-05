Dado('que acesso a página login') do
  go_to_login
end

Quando('submeto minhas credenciais com: {string} e {string}') do |email, password|
  login_with(email, password)
end

Então('devo ver a mensagem de erro: {string}') do |expected_message|
  expect(login_alert).to eql expected_message
end
