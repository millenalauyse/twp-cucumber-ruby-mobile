Dado("que acesso a tela Avengers") do
  @nav.tap_hamburger
  @nav.tap_by_text("AVENGERS")
  @nav.tap_by_text("LISTA")
end

Quando("apago o Capitão América") do
  # # Parâmetros que devem ser passados no metodo swuipe da classe TouchAction ##
  # As coordenadas devem ser em porcentagem
  # start_x => posição inicial na horizontal
  # start_y => posição inicial na vertical
  # offset_x => posição final na horizontal
  # offset_y => posição final na vertical
  # duration => duração d omovimento swuipe em milisegundos

  # checkpoint para garantir que está na tela certa
  find_element(id: "io.qaninja.android.twp:id/rvList")

  coord = { start_x: 0.93, start_y: 0.18, offset_x: 0.48, offset_y: 0.18, duration: 2000 }
  Appium::TouchAction.new.swipe(coord).perform

  find_element(id: "io.qaninja.android.twp:id/btnRemove").click
end

Então("devo ver a seguinte mensagem: {string}") do |expected_message|
  message = find_element(id: "io.qaninja.android.twp:id/snackbar_text")
  expect(message.text).to eql expected_message
end
