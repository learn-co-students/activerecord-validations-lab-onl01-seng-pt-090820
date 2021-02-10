class Post < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, presence: true, inclusion: {in: %w(Fiction Non-Fiction)}
    validates :title, inclusion: {in: ["Won't Believe", "Secret", "Top [number]", "Guess", "You Won't Believe These True Facts"]}
end
