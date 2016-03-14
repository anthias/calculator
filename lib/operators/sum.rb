module Sum

  def self.symbol
    "+"
  end

  def self.precedence
    CALCULATOR::LOW_PRECEDENCE
  end

  def self.perform(subjects)
    subjects[0].to_i + subjects[1].to_i
  end
end
