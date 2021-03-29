class ClickBaitValidator < ActiveModel::Validator
  def validate(record)
    unless record.title.nil? || record.title.match(/Won't Believe|Secret|Top\s\d|Guess/) # check if nill or match
      record.errors.add :title, "Try Again" # if no match add error message
    end
  end
end