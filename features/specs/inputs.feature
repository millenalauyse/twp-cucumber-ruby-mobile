#language: pt

Funcionalidade: Inputs

    Cenario: Radio Button
        Dado que acesso a tela Botões de Radio
        Quando eu escolho a opção Ruby
        Então esta opcao deve ser marcada

    @checkbox
    Cenario: Checkbox
        Dado que acesso a tela Checkbox
        Quando eu marco a opção Ruby
        Então esta opcao deve estar marcada

    @checkbox2
    Cenario: Todas as techs que usam o Appium
        Dado que acesso a tela Checkbox
        Quando eu marco as seguintes techs:
            | tech            |
            | Ruby            |
            | Java            |
            | Python          |
            | Javascript      |
            | C#              |
            | Robot Framework |
        Então todas essas opcoes devem estar marcadas