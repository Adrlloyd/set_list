require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @song1 = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 4)
        @song2 = @prince.songs.create!(title: 'song2', length: 664, play_count: 4)
        @song3 = @prince.songs.create!(title: 'song2', length: 1, play_count: 4)
      end
      
      it 'returns the average song length' do
        expect(@prince.average_song_length.round(2)).to eq(503.33)
      end
    end
  end
end