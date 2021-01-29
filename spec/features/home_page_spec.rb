feature 'welcome' do 
  scenario 'it should welcome users to the page' do 
    visit('/')
    expect(page).to have_content "Hello there!"
  end
end

feature 'input name' do 
  scenario 'user should input a name'do 
  visit('/')
  fill_in :'name', with: 'Dan'
  end

  feature 'input birthday' do 
    scenario 'user should input birthday' do 
      visit('/')
      fill_in :'day', with: '21'
    end
  end 

  feature 'select birth month' do 
    scenario 'user should select birth month' do 
      visit('/')
      select 'June', from: 'month'
    end
  end
end