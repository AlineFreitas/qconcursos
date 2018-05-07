class SubjectMatter < ApplicationRecord
  belongs_to :discipline
  has_many :questions
end
