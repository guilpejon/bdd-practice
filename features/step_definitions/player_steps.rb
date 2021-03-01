Dado('Login com {string} e {string}') do |email, password|
  visit "http://parodify.qaninja.com.br"
  click_on "Login"

  find("#user_email").set email
  find("#user_password").set password
  click_on "Log in"
end

Dado('que eu gosto muito de {string}') do |category|
  find("a[href='/search/new']").click
  find("img[src$='#{category.downcase}.png']").click
end

Quando('toco a seguinte canção:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @parody = table.rows_hash

  find('a', text: @parody[:banda]).click

  song = find('.song-item', text: @parody[:parodia].strip)

  song.find('.fa-play-circle').click
end

Então('essa paródia deve ficar em modo de reprodução') do
  song_playing = find('.playing')
  expect(song_playing).to have_text @parody[:parodia].strip
end
