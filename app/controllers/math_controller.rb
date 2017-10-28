class MathController < ApplicationController
    def report
      @quest = Quest.find(5)
      grade(params[:answer], @quest)
      @fdata=get_report(current_user,current_user.cnt,1)
      @sdata=get_report(current_user,current_user.cnt,2)
    end
    def report2
      @quest = Quest.find(10)
      grade(params[:answer], @quest)
      @fdata=get_report(current_user,current_user.cnt,1)
      @sdata=get_report(current_user,current_user.cnt,2)
      render 'report'
    end
    def start
      @subjects_su2 = Subject.where(big: "수학 Ⅱ")
      @subjects_der = Subject.where(big: "미적분 Ⅰ")
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

      if current_user.cnt.even? && current_user.cnt!=0
        redirect_to math_solve2_path(:id => 6)
      else
        redirect_to math_solve_path(:id => 1)
      end
    end

    def solve2
      quests=Quest.where(id: [6,7,8,9,10])

      if params[:id].to_i == 10
        @url = "/math/report2"
      else
        @url = "/math/solve2?id=#{params[:id].to_i + 1}"
      end
      @quest = Quest.find(params[:id])
      grade(params[:answer], @quest)
      render 'solve'
    end

    def solve
      # final_quest_id = session[:final_quest_id]
      # @final_quests = Quest.where(quest_id: final_quest_id)
      # session[:final_quest_id] = nil
      # answers.push(params[:answer]
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
      @quest = Quest.find(params[:quest_id])
      @q_units = @quest.info.keys
      if params[:url] == "main"
        @url = :back
      else
        Uquest.create!(user_id: current_user.id, quest_id: params[:quest_id], correct: 0, cnt: current_user.cnt)
        if params[:id].to_i == 5
        @url = "/math/report"
        elsif params[:id].to_i == 10
          @url = "/math/report2"
        elsif current_user.cnt.even? && current_user.cnt!=0
          @url = "/math/solve2?id=#{params[:id].to_i + 1}"
        else
          @url = "/math/solve?id=#{params[:id].to_i + 1}"
        end
      end
    end
end
