class StringMasker::Phone

  attr_accessor :phone

  NINE_DIGITS = 11

  def initialize(phone)
    @phone = phone
  end

  def format
    klass = masker_class
    klass ? klass.new(phone).format : phone
  end

  def masker_class
    phone.to_s.size == NINE_DIGITS ? StringMasker::Phone::NineDigits : StringMasker::Phone::Default
  end
end
