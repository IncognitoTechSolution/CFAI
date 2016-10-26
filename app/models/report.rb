class Report < ActiveRecord::Base
  def self.search(search)
    if search
      where(["filename LIKE?","%#{search}%"])
    else
      all
    end
  end
end
