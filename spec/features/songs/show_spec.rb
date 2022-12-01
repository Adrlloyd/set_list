require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays the song title' do
    artist = Artist.create(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456357)
    song2 = artist.songs.create!(title: "Call me maybe", length: 203, play_count: 22456357)
    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song2.title)
  end

  it 'displays the name of the artist' do
    artist = Artist.create(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456357)
    song2 = artist.songs.create!(title: "Call me maybe", length: 203, play_count: 22456357)
    visit "/songs/#{song.id}"

    expect(page).to have_content(artist.name)
  end  
end