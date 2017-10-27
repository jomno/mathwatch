class Quest < ApplicationRecord
  serialize :info, JSON
  has_many :explain
  # Uquest
  has_many :uquests
  has_many :users, through: :uquests

  # def self.searchU(user_level_unit)
  #   quests = []
  #   user_level_unit.keys.zip(user_level_unit.values).each do |u, l|
  #       for i in 1..Quest.all.length
  #         quest_info = Quest.find(i).info
  #
  #         quest_info.each do |qi|
  #           if qi.keys == u && qi.values == l
  #
  #              quests.push(Quest.find(i).id)
  #           end
  #         end
  #
  #       end
  #   end
  #
  #   return quests
  # end
end
