class Quest < ApplicationRecord
  serialize :info, Hash
  # serialize :content, Array
  has_many :explain
  # Uquest
  has_many :uquests
  has_many :users, through: :uquests


  # def self.next_quest(user,cnt)
  #   resultAry = []
  #   Quest.where(id: Uquest.fail_ary(user,cnt)).each do |q|
  #     resultAry.push(q.info)
  #   end
  # end
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
