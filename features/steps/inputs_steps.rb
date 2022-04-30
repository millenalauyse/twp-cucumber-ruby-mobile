Dado("que acesso a tela Botões de Radio") do
  @nav.tap_hamburger
  @nav.tap_by_text("INPUTS")
  @nav.tap_by_text("BOTÕES DE RADIO")
end

Quando("eu escolho a opção Ruby") do
  @radio_locator = "//android.widget.RadioButton[contains(@text,'Ruby')]"
  find_element(xpath: @radio_locator).click
end

Então("esta opcao deve ser marcada") do
  # precisa procurar novamente o elemento radio, pq quando encontra no step anterior e salva na variavel antes de clicar, o seu estado é saçvo como false
  @radio_result = find_element(xpath: @radio_locator)
  expect(@radio_result.checked).to eql "true"
end

Dado ("que acesso a tela Checkbox") do
  @nav.tap_hamburger
  @nav.tap_by_text("INPUTS")
  @nav.tap_by_text("CHECKBOX")
end

Quando ("eu marco a opção Ruby") do
  @check_locator = "//android.widget.CheckBox[contains(@text,'Ruby')]"
  find_element(xpath: @check_locator).click
end

Então ("esta opcao deve estar marcada") do
  # precisa procurar novamente o elemento checkbox, pq quando encontra no step anterior e salva na variavel antes de clicar, o seu estado é saçvo como false
  log(get_source)
  @check_result = find_element(xpath: @check_locator)
  expect(@check_result.checked).to eql "true"
end

Quando ("eu marco as seguintes techs:") do |table|
  @techs = table.hashes

  # foreach do ruby
  @techs.each do |item|
    #log(item["tech"])
    check_locator = "//android.widget.CheckBox[contains(@text,'#{item["tech"]}')]"
    find_element(xpath: check_locator).click
  end
end

Então ("todas essas opcoes devem estar marcadas") do
  # foreach do ruby
  @techs.each do |item|
    check_locator = "//android.widget.CheckBox[contains(@text,'#{item["tech"]}')]"
    check_result = find_element(xpath: check_locator)
    expect(check_result.checked).to eql "true"
  end
end
