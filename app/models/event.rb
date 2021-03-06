class Event < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :participations, dependent: :nullify
  has_attachment :photo
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  MEETING = ["Interval run", "Endurance run", "Cool run", "Chatting run", "Speed walk", "Pleasant walk"]

  validates :type_of, inclusion: { in: MEETING }
  validates :datetime, presence: true
  validates :private, :inclusion => { :in => [true, false] }
  validates :meeting_point, presence: true
  validate :goal

  def goal
    if time_goal.nil? && trail_goal.nil?
      errors.add(:time_goal, "You have to choose a goal")
      errors.add(:trail_goal, "You have to choose a goal")
    end
  end

  def time_goal_to_s
    return "" if time_goal.nil?
    hours = time_goal / 60
    min = time_goal % 60
    min = "0#{min}" if min < 10
    hours == 0 ? "#{min}min" : "#{hours}h#{min}min"
  end

  def start_time
      self.datetime.strftime('%e %B %Y') ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end

  def joined?(user)
    self.participations.map(&:user).include?(user)
  end
end

