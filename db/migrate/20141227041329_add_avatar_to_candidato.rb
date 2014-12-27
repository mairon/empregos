class AddAvatarToCandidato < ActiveRecord::Migration
 def self.up
    add_attachment :candidatos, :avatar
  end

  def self.down
    remove_attachment :candidatos, :avatar
  end
end
