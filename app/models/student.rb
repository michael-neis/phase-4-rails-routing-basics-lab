class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.grade_sort
    self.all.sort_by{|s| s.grade}.reverse()
  end

end
