class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }    
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w{Fiction Non-Fiction} }
    validate :title_is_clickbait_y

    def title_is_clickbait_y
        if title.blank? ||  (!title.include? %q{Won't Believe} || %q{Secret} || %r{\ATop\d+\z} || %q{Guess})
            errors.add :title, "The title must be sufficiently clickbait-y!"
        end
    end
end
