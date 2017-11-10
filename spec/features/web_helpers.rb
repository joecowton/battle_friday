def sign_in_and_play
  visit '/'
  fill_in('player_1_name', with: 'Allan')
  fill_in('player_2_name', with: 'Dania')
  click_button('Fight')
end
