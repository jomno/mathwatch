class MathController < ApplicationController
  def report
    @fdata=get_report(User.first,1,1)
    @sdata=get_report(User.first,1,2)
  end
end
