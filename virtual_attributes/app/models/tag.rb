class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :questions, through: :taggings

  def self.make_tags(tag_list)
    tag_list.split(',').map { |tag_name| Tag.create!(name: tag_name) }
  end

end
