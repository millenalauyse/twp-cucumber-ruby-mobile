#language: pt

Funcionalidade: Login

    Cenário: Login com sucesso
        Dado que acesso a tela de Login
        Quando submeto minhas credenciais
            | email | eu@millena.com |
            | senha | qaninja        |
        Então devo ver a notificação: "Show! Suas credenciais são validas."