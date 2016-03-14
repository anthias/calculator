module Operation

  # Example input: 1 + 3
  def self.perform(operation)
    operator = find_operator(operation)# 4
    subjects = operation.split(operator.symbol)
    operator.perform(subjects)
  end

  def self.find_operator(operation)
    Calculator::OPERATORS.find {|o| operation.split(o.symbol).size > 1 }
  end
end
