class Post < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :published_at, presence: true

    before_create:captial_title

    def captial_title
        self.title=title.upcase
    end
end
