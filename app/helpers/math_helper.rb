module MathHelper
  def get_report(user,cnt,index)
    result= Hash.new
    first=Uquest.where(user_id: user.id,cnt: cnt)
    second= Hash.new
    Subject.find(3).units.each do |u|
      second[u.id]=0
    end
    Quest.where(id: Uquest.fail_ary(user,cnt)).select(:info).each do |q_unit|
      q_unit.info.keys.each do |key|
        second[key.to_i]+=q_unit.info[key].to_i
      end
    end
    result["1"]=first
    result["2"]=second #{unit: 점수,unit: 점수}
    return result[index.to_s]
  end

  def grade(answer_submit,answer_quest)
    if answer_submit.present?
      if answer_submit.to_i == answer_quest.answer
        Uquest.create!(user_id: 1, quest_id: answer_quest.id-1, correct: 1, cnt: current_user.cnt)
      else
        Uquest.create!(user_id: 1, quest_id: answer_quest.id-1, correct: 0, cnt: current_user.cnt)
      end
    end
  end
end
