Dado("que acesso a tela Click Simples") do
  @nav.tap_hamburger
  @nav.tap_by_text("BOTÕES")
  @nav.tap_by_text("CLIQUE SIMPLES")
end

Quando("faco um click simples") do
  find_element(:id, "io.qaninja.android.twp:id/short_click").click
end

Então("devo ver o texto: {string}") do |expected_text|
  expect(@toaster.toast.text).to eql expected_text
end

Dado ("que acesso a tela Clique Longo") do
  @nav.tap_hamburger
  @nav.tap_by_text("BOTÕES")
  @nav.tap_by_text("CLIQUE LONGO")
end

Quando ("faco um clique Longo") do

  # primeiro busca o elemento e guarda na variável "button"
  @button = find_element(:id, "io.qaninja.android.twp:id/long_click")

  # modulo do appium que instancia a classe TouchAction, o .press pressiona o botão (elemento passado por parametro @button), e o wait aguarda 2 segundos
  Appium::TouchAction.new.press(element: @button).wait(2000).release.perform
end

Então ("devo ver o botão com o texto: {string}") do |expected_text|
  expect(@button.text).to eql expected_text
end
