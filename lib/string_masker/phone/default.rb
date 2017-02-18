class StringMasker::Phone::Default < StringMasker::Phone::Base

  REGEXP = /(\d{2})(\d{4})(\d{4})/

  def format
    clean
    phone.match(REGEXP) { "(#{$1}) #{$2}-#{$3}" }
  end

end
