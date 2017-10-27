class MathController < ApplicationController

  def report
    @data=get_report(User.first,1,1)
  end
end
