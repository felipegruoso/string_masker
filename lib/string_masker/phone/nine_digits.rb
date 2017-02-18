class StringMasker::Phone::NineDigits < StringMasker::Phone::Base

  REGEXP = /(\d{2})(\d{1})(\d{4})(\d{4})/

  def format
    clean
    phone.match(REGEXP) { "(#{$1}) #{$2}#{$3}-#{$4}" }
  end

end
