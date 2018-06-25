class Task < ApplicationRecord
  belongs_to :project

  def get_duration
    self.end - self.init
  end

  def set_init_time
    if self.end.nil?
      self.init = Time.now
    else
      self.init = self.end
    end
  end

  def set_end_time
    self.end = Time.now
  end
end
