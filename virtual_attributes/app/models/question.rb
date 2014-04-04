class Question < ActiveRecord::Base
  has_many :taggings
  has_many :tags, through: :taggings


  def tag_list=(tag_list)
    self.tags = Tag.make_tags(tag_list)
  end

  def tag_list
    tags.map(&:name).join(', ')
  end


end
