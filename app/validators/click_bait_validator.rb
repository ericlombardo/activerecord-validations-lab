class ClickBaitValidator < ActiveModel::Validator
  def validate(record)
    unless record.title.nil? || record.title.match(/Won't Believe|Secret|Top\s\d|Guess/)
      record.errors.add :title, "Try Again"
    end
  end
end