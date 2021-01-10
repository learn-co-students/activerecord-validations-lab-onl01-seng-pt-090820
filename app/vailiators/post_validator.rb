class PostValidator < ActiveModel::Validator 
    
    def validate(post)
        if post.title == nil
        elsif post.title.include? "Won't Believe" 
        elsif post.title.include? "Secret"
        elsif post.title.include? "Top [number]"
        elsif post.title.include? "Guess"
        elsif 
            post.errors.add(:title, "must be clickbait-y")
        end
    end

end