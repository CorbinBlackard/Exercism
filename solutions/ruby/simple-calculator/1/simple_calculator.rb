class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError; 
  end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)

    begin
      ans = first_operand.send(operation, second_operand)
      "#{first_operand} #{operation} #{second_operand} = #{ans}"
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end
end