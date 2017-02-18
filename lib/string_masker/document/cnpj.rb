class StringMasker::Document::Cnpj < StringMasker::Document::Base

  REGEXP = /(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/

  def format
    clean
    document.match(REGEXP) { "#{$1}.#{$2}.#{$3}/#{$4}-#{$5}" }
  end

end
