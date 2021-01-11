class TitleValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        unless value.to_s.include?("Won't Believe" || "Secret" || "Top" || "Guess")
            record.errors.add attribute, (options[:message] || "Please add more clickbait to the title")
        end
     end
end