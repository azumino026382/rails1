class Schedule < ApplicationRecord
  validates :title, :start, :end, presence: true
  validates :title, length: { maximum: 20 }
  validates :memo, length: { maximum: 500 }
  validate :start_end_check
  
  def start_end_check
    errors.add(:end, "の日付を正しく記入して下さい。") unless
    self.start < self.end
  end 
end

