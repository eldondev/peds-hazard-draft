class AddAttachmentPicfileToReports < ActiveRecord::Migration
  def self.up
    change_table :reports do |t|
      t.has_attached_file :picfile
    end
  end

  def self.down
    drop_attached_file :reports, :picfile
  end
end
