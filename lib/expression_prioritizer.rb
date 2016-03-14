class ExpressionPrioritizer

  def initialize(expression)
    @original_expression = expression
    @expression = expression
  end

  def next
    # Returns the highest precedence operation for the given expression
    expression
  end

  # Scans the current expression string and looks for operators.
  # TODO: Use Calculator::OPERATORS
  def has_more_operations?
    expression.match(/\D/)
  end

  # Adds the result into the expression in place.
  #  1 + 2 + 3  -->  3 + 3 after calculating 1 + 2
  def sub_in(result)
    expression = result
  end

  private

  attr_accessor :expression

end
