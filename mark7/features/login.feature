#language:pt

Funcionalidade: Login
Para que eu possa cadastrar e gerenciar minhas tarefas
Sendo um usuário
Posso acessar o sistema com meu email e senha previamente cadastrados.

# Fazer login com email e senha
# Clicou em OK, é autenticado com sucesso
# Olá Fulano

Contexto: Página principal
    Dado que eu acesso a página principal

@logout
Cenário: Usuário deve ser autorizado
    
    Quando eu faço login com "eu@papito.io" e "123456"
    Entao devo ser autenticado com sucesso
    E devo ver a mensagem "Olá, Fernando"

Esquema do Cenario: Tentativa de login

    Quando eu faço login com "<email>" e "<senha>"
    Entao devo ver a mensagem "<alerta>"

    Exemplos:
    |   email                  |   senha      |  alerta                       |
    |   eu@papito.io           |   xpto123    |  Senha inválida.              |
    |   eufernando@papito.io   |   123456     |  Usuário não cadastrado.      |
    |   eufernandopapito.io    |   xpto123    |  Email incorreto ou ausente.  |
    |                          |   xpto123    |  Email incorreto ou ausente.  |
    |   eu@papito.io           |              |  Senha ausente.               |