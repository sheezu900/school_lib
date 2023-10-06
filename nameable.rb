# frozen_string_literal: true

# create Nameable class to change name

class Nameable
  def correct_name
    raise NotImplementedError, 'method should be implemented'
  end
end

class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    name = super
    return name[0, 10] if name.length > 10

    name
  end
end