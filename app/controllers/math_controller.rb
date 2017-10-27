class MathController < ApplicationController
    def report
      @fdata=get_report(current_user,current_user.cnt,1)
      @sdata=get_report(current_user,current_user.cnt,2)
    end
    def start
      @subjects = Subject.all
    end
    def select
      # subjects = params[:subject_ids]
      #
      # units_id=[]
      # user_level_unit = Hash.new
      #
      # Unit.where(subject_id: subjects).each do |u|
      #   units_id.push(u.id)
      # end
      #
      # Ulevel.where(unit_id: units_id, user_id: 1).each do |l|
      #   user_level_unit["#{l.unit_id}"] = l.level  #current_user id 추가도 해야 됨
      # end
      #
      # quests = Quest.searchU(user_level_unit)
      # puts quests
      # session[:final_quest_id] = quests
      current_user.cnt+=1
      redirect_to math_solve_path(:id => 1)
    end

    def solve
      # final_quest_id = session[:final_quest_id]
      # @final_quests = Quest.where(quest_id: final_quest_id)
      # session[:final_quest_id] = nil
      # answers.push(params[:answer])
      quests=Quest.all.limit(5)

      if params[:id].to_i == 5
        @url = "/math/report"
      else
        @url = "/math/solve?id=#{params[:id].to_i + 1}"
      end

      @quest = quests[params[:id].to_i-1]
    end

    def grade

    end
end
