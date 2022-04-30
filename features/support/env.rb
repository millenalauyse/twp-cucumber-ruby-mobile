require "allure-cucumber"
require "appium_lib"

require "fileutils"

# Limpa os logs e os screenshots
FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

caps = Appium.load_appium_txt file: File.expand_path("caps/android.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)

# Quando invoca o metodo promote_appium_methods é possível ter acesso a todos os metodos do appium de fomra nativa, por isso ao buscar elementos, não é preciso pasar driver.find_elemnt por exemplo
Appium.promote_appium_methods Object
