Dado('que acesso a página de cadastro') do
  visit "http://parodify.qaninja.com.br"
  click_on "EXPERIMENTE AGORA"
end

Quando('submeto o meu cadastro com:') do |table|
  user = table.rows_hash

  email = user[:email]
  destroy_user_based_on_email(email)

  find("input[name*=email]").set email
  find("input[placeholder='Sua senha secreta']").set user[:senha]
  find("input[placeholder='Confirme a senha']").set user[:senha_confirma]

  click_on "Cadastrar"
end

Então('devo ser redirecionado para a área logada') do
  expect(page).to have_css '.dashboard'
end

Então('devo ver a mensagem: {string}') do |expected_message|
  alert = find(".message p")
  expect(alert.text).to eql expected_message
end
