class StringMasker::PostalCode

  attr_accessor :postal_code

  REGEXP = /(\d{5})(\d{3})/

  def initialize(postal_code)
    @postal_code = postal_code
  end

  def format
    clean
    postal_code.match(REGEXP) { "#{$1}-#{$2}" }
  end

  def clean
    @postal_code.gsub!(/\D/, '')
  end
end
