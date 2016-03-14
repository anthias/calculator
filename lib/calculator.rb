class Calculator

  OPERATORS = [Sum]
  LOW_PRECEDENCE = 4
  HIGH_PRECEDENCE = 5

  def initialize(expression)
    @expression_prioritizer = ExpressionPrioritizer.new(expression)
  end

  def equals
    while expression_prioritizer.has_more_operations?
      result = Operation.perform(expression_prioritizer.next)
      expression_prioritizer.sub_in(result)
    end

    # The result will be "1 + 2 + 3" -> "3 + 3" -> "6"
    expression_prioritizer.expression
  end

  private

  attr_accessor :expression_prioritizer

end
