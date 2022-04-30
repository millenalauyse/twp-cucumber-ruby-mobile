#language: pt

Funcionalidade: Buttons

    Cenário: Clique Simples
        Dado que acesso a tela Click Simples
        Quando faco um click simples
        Então devo ver o texto: "Isso é um clique simples"

    @long
    Cenário: Clique Looongo
        Dado que acesso a tela Clique Longo
        Quando faco um clique Longo
        Então devo ver o botão com o texto: "CLIQUE LONGO OK"
