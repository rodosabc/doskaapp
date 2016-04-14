class AddAttachmentImageToBlogItems < ActiveRecord::Migration
  def self.up
    change_table :blog_items do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment  :blog_items, :image
  end
end
