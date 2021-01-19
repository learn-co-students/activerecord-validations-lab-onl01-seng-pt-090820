class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title != nil
            unless record.title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
                record.errors[:title] << "Title is not click-bait enough"
            end
        end
    end
end