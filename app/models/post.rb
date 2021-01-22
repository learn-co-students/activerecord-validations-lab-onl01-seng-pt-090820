class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100 }
    validates :summary, length: { maximum: 100 }
    validates :category, inclusion: { in: %w(Fiction) }
    validate :clickbait

    def clickbait
        if title.present? && !title.include?("Won't Believe")
          errors.add(:title, "Not clickbait-y")
        end
    end

end