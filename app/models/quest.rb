class Quest < ApplicationRecord
  serialize :info, Hash
  # serialize :content, Array
  has_many :explain
  # Uquest
  has_many :uquests
  has_many :users, through: :uquests

  # def self.searchU(user_level_unit)
  #   quests = []
  #   user_level_unit.keys.zip(user_level_unit.values).each do |u, l|
  #     for i in 1..Quest.all.length
  #       quest_info = Quest.find(i).info
  #       quest_info.keys.zip(quest_info.values).each do |k, v|
  #       for j in 0..(u.length - 1)
  #         for h in 0..(k.length - 1)
  #             if u[j] == k[h] && l[j] == v[h]
  #                quests.push(Quest.find(i).id)
  #             end
  #           end
  #         end
  #       end
  #     end
  #   end
  #
  #   return quests
  # end
end
