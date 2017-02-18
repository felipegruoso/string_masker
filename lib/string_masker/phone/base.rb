class StringMasker::Phone::Base

  attr_accessor :phone

  def initialize(phone)
    @phone = phone
  end

  def clean
    @phone.gsub!(/\D/, '')
  end
end
