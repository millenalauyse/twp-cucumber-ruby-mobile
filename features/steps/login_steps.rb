Dado("que acesso a tela de Login") do
  @nav.tap_hamburger
  @nav.tap_by_text("FORMS")
  @nav.tap_by_text("LOGIN")
end

Quando("submeto minhas credenciais") do |table|
  #rows_hash transorma a tabela em objeto do ruby, que é objeto do tipo hash(chave, valor)
  user = table.rows_hash
  log(user)
  @login.sign_in(user[:email], user[:senha])
end

Então("devo ver a notificação: {string}") do |notice|
  # log(get_source) #pega o xml da tela
  expect(@toaster.toast.text).to eql notice
end
