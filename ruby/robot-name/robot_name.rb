class Robot
  attr_reader :robot_name

  def name
    @robot_name ||= begin
      @robot_name = []
      2.times do
        robot_name << ('A'..'Z').to_a.sample
      end
      3.times do
        robot_name << (0..9).to_a.sample
      end
      robot_name.join('')
    end
  end

  def reset
    @robot_name = nil
  end

end
