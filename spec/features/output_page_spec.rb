require './spec/web_helper.rb'

feature 'Happy birthday name' do
    scenario 'it should say Happy birthday to the user' do 
    sign_in_and_submit
    expect(page).to have_content "Happy Birthday Dan!"
    end
end
