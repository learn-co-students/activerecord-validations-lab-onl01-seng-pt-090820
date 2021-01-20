class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :title_must_contain_clickbait

    CLICKBAIT = [/Won't Believe/, /Secret/, /Top [0-9]/, /Guess/]
    
    def title_must_contain_clickbait
        CLICKBAIT.each do |click|
            if click.match(title)
                return true
            end
        end 
        errors.add(:title, "must contain clickbait")
    end 
end     
