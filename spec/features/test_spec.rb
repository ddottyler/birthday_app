feature 'testing working' do
  scenario 'it should check the testing is working' do 
    visit('/test')
    expect(page).to have_content "Hello world!"
  end
end