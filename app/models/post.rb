class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :click_baity_title

    def click_baity_title
        if self.title && self.title.scan(/(Won't Believe)|(Secret)|(Guess)|(Top\s\d)/).empty?
            errors.add(:title, "is not clickbait-y enough!")
        end
    end
end
