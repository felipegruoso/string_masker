class StringMasker::Document::Cpf < StringMasker::Document::Base

  REGEXP = /(\d{3})(\d{3})(\d{3})(\d{2})/

  def format
    clean
    document.match(REGEXP) { "#{$1}.#{$2}.#{$3}-#{$4}" }
  end

end
