class Group < ApplicationRecord
  has_many :concerts, dependent: :destroy
  enum group_type: [:solista,:duo,:mujeres,:hombres,:banda]
  validates :name, :members, :start_date,:group_type, presence: true


  def to_s
    name
  end
  
  def month_concerts
    i = 0
      self.concerts.each do |concert|
        if concert.date.month == Time.now.month() 
          i += 1
        end    
      end
      @total = i
  end
  
  def last_concert
  concert = self.concerts.maximum(:date)
  return concert
  end

  def max_audience
  concert = self.concerts.maximum(:audience)
  end

  def max_duration
  concert = self.concerts.maximum(:duration)
  end


end
