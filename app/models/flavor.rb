class Flavor < ActiveRecord::Base
  validates :name, presence: true
  validates :os_id, uniqueness: true

  scope :enabled, -> { where(enabled: true) }
  scope :publics, -> { where(is_public: true) }
  scope :usables, -> { enabled.publics }
end
