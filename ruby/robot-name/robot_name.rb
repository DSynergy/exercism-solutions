class Robot
  attr_reader :robot_name

  def name
    @robot_name ||= begin
      @robot_name = []
      robot_name << ('A'..'Z').to_a.sample(2)
      robot_name << (0..9).to_a.sample(3)
      robot_name.join
    end
  end

  def reset
    @robot_name = nil
  end

end
