class MathController < ApplicationController
    def report

      @quest = Quest.find(5)
      grade(params[:answer], @quest)
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
      # session[:final_quest_id] ||= quests

      cnt2=current_user.cnt+1
      current_user.update!(cnt: cnt2)
      redirect_to math_solve_path(:id => 1)
    end

    def solve
      # final_quest_id = session[:final_quest_id]
      # @final_quests = Quest.where(quest_id: final_quest_id)
      # session[:final_quest_id] = nil
      # answers.push(params[:answer])
      puts session[:final_quest_id]
      quests=Quest.all.limit(5)

      if params[:id].to_i == 5
        @url = "/math/report"
      else
        @url = "/math/solve?id=#{params[:id].to_i + 1}"
      end

      @quest = quests[params[:id].to_i-1]

      grade(params[:answer], @quest)
    end

    def explain
      Uquest.create!(user_id: 1, quest_id: params[:quest_id], correct: 0, cnt:1)
      if params[:id].to_i == 5
        @url = "/math/report"
      else
        @url = "/math/solve?id=#{params[:id].to_i + 1}"
      end
    end
end
