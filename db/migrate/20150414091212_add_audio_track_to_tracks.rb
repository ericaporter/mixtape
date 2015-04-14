class AddAudioTrackToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :audio_track, :string
  end
end
