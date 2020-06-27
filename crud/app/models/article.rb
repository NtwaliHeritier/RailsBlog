class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :taggings
    has_many :tags, through: :taggings, dependent: :destroy
    

    def tag_list
        tags.join(",")
    end

    def tag_list=(tag_names)
        tag_name=tag_names.split(",").collect{|t| t.strip.downcase}.uniq
        tag_return=tag_name.collect{|s| Tag.find_or_create_by(name: s)}
        self.tags=tag_return
    end

end
