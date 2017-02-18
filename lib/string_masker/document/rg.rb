class StringMasker::Document::Rg

  attr_accessor :rg

  REGEXP = /(\d{2})(\d{3})(\d{3})(\d{1})/

  def initialize(rg)
    @rg = rg
  end

  def format
    clean
    rg.match(REGEXP) { "#{$1}.#{$2}.#{$3}-#{$4}" }
  end

  def clean
    @rg.gsub!(/\D/, '')
  end
end
