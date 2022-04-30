#classe para representar o menu de navegação (é um componente, por isso o nome da classe nao temrina em 'Screen')
class Navigator
  def tap_hamburger
    #mapeia o elemento e já dá a funcionalidade
    haburguer = "//android.widget.ImageButton[@content-desc='Open navigation drawer']"
    find_element(xpath: haburguer).click
  end

  def list
    return find_element(id: "io.qaninja.android.twp:id/rvNavigation")
  end

  #metodo generico que vai clicar em uma opção baseada no texto passado por parametro
  def tap_by_text(target)
    find_element(xpath: "//*[@text='#{target}']").click
  end
end

class Toaster
  def toast
    return find_element(xpath: "//android.widget.Toast")
  end
end
