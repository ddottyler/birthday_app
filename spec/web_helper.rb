def sign_in_and_submit
    visit('/')
    fill_in :'name', with: 'Dan'
    fill_in :'day', with: '21'
    select 'June', from: 'month'
    click_button 'Go!'
end