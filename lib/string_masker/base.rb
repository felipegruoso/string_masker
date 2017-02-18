class StringMasker::Base

  attr_reader :scope, :type, :args

  def initialize(type, args, scope = [])
    @scope = Array(scope).map(&:to_s)
    @type = type.to_s
    @args = args
  end

  def format
    klass = masker_class
    klass ? klass.new(args).format : args
  end

  def masker_class
    "StringMasker::#{nested_scope}#{type.camelize}".constantize
  end

  def nested_scope
    return if scope.blank?
    scope.map(&:camelize).join('::') + '::'
  end
end
