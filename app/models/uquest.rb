class Uquest < ApplicationRecord
  belongs_to :user
  belongs_to :quest

  def self.fail_ary(user,cnt)
    resultAry=[]
    self.where(user_id: user.id, cnt: cnt).each do |uq|
      resultAry.push(uq.quest_id) unless uq.correct
    end
    return resultAry
  end


end
