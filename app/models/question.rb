class Question < ApplicationRecord
  belongs_to :subject_matter
  has_many :options, dependent: :destroy, inverse_of: :question

  accepts_nested_attributes_for :options, limit: 5, :reject_if => lambda { |a| a[:description].blank?}
end
