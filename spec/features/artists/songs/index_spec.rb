require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before :each do
    @prince = Artist.create!(name: 'Prince')
    @song1 = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 4)
    @song2 = @prince.songs.create!(title: 'song2', length: 664, play_count: 4)
    @song3 = @prince.songs.create!(title: 'song2', length: 1, play_count: 4)
  end
    
  it 'shows all of the titles of the songs for the artist' do
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content(@song1.title)
    expect(page).to have_content(@song2.title)
  end

  it 'links to each song show page' do
    visit "/artists/#{@prince.id}/songs"

    click_on @song1.title

    expect(current_path).to eq ("/songs/#{@song1.id}")
  end

  it 'shows the average song length for the artist' do
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content("Average Song Length for Prince: 503.33")
  end
end