class PostValidator < ActiveModel::Validator
    def validate(record)
      unless record.title && record.title.match?(/(Won't Believe|Secret|Top \d|Guess)/)
        record.errors[:title] << "That title isn't clickbait!"
      end 
    end 
  end  