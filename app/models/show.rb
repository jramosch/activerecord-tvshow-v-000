require 'pry'

class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where(rating: highest_rating).pluck(:name)[0]
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_show
    Show.where(rating: lowest_rating).pluck(:name)[0]
  end

  def ratings_sum
    Show.sum(:rating)
  end

  def popular_shows

  end

  def shows_by_alphabetical_order

  end
end
