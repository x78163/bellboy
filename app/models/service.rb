class Service < ApplicationRecord

  # GEM PARANOIA
  acts_as_paranoid
  # END GEM PARANOIA

  #cloudiary photo
  has_attachment :photo

  # VALIDATIONS AND ASSOCIATIONS
  belongs_to :hotel

  has_many :bookings, dependent: :destroy

  validates :title, :description, :start_time, :end_time, presence: true
  validates :title, uniqueness: true
  # END VALIDATIONS AND ASSOCIATIONS

  # def name
  #   return self.title
  # end

end
