Dado("que eu acesso a página principal") do
   
     visit'http://mark7.herokuapp.com'
  end
  
   Quando("eu faço login com {string} e {string}") do |email, senha|
    @email = email
    login = LoginPage.new
    login.faz_login(email,senha)
    # find('input[name=email]').set email
    # find('#login_password').set senha
    # click_button 'Login'
    # sleep 5
   end
  
  Entao("devo ser autenticado com sucesso") do
    expect(page).to have_content @email
  end
  Entao("devo ver a mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
  end
