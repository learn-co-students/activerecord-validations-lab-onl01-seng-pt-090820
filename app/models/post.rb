class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Non-Fiction Fiction)}
    # validate :clickbaity
    
    include ActiveModel::Validations 
    validates_with PostValidator

    # def clickbaity 
    #     if title == nil
    #     elsif title.include? "Won't Believe" 
    #     elsif title.include? "Secret"
    #     elsif title.include? "Top [number]"
    #     elsif title.include? "Guess"
    #     elsif 
    #         errors.add(:post, "must be clickbait-y")
    #     end
    # end
            
end
