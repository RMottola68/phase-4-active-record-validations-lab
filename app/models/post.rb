class Post < ApplicationRecord
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :title, presence: true
    validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}
    validate :title_is_clickbait


    def title_is_clickbait
        unless title != "True Facts"
            errors.add(:title, "Title cannot be True Facts!")
        end
    end

end
