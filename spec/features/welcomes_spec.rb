require 'rails_helper'

feature "Welcome", type: :feature do
  scenario 'Mostrar a mensagem de Bem-vindo' do
    visit(root_path)
    expect(page).to have_content('BOM DIA MACARRÃO')
   end

   scenario 'Verificar o link Cadastro de Clientes' do
    visit(root_path)
    expect(page).to have_selector('ul li a')
    expect(page).to have_link('Cadastro de Clientes')
   end

end  
