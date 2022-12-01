require 'rails_helper'

RSpec.describe 'Songs Index', type: :feature do

  describe "As a user" do
    describe "when i visit /songs," do
      it "i see each song's title and play count" do
        carly = Artist.create!(name: "Carly Rae Jepsoen")
        song_1 = Song.create!(title:       "I Really Like You",
                         length:      208,
                         play_count:  243810867,
                         artist: carly)
        song_2 = Song.create!(title:       "Call Me Maybe",
                         length:      199,
                         play_count:  1214722172,
                         artist: carly)

        visit "/songs"

        expect(page).to have_content(song_1.title)
        expect(page).to have_content("Play Count: #{song_1.play_count}")
        expect(page).to have_content(song_2.title)
        expect(page).to have_content("Play Count: #{song_2.play_count}")
      end
    end
  end

end