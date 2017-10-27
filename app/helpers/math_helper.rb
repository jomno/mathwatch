module MathHelper
  def get_report(user,cnt,index)
    result= Hash.new
    first=Uquest.where(user_id: user.id,cnt: cnt)
    # second= Hash.new
    # Quest.where(id: Uquest.fail_ary(user,cnt)).select(:info).each do |q_unit|
    #   q_unit.info.each do |u_level|
    #     second[u_level.keys]+=u
    #   end
    # end
    # Unit.all.each do |u|
    #   second[u].push()
    # end
    result["1"]=first
    # result["2"]=second
    return result[index.to_s]
  end
end
