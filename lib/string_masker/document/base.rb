class StringMasker::Document::Base

  attr_accessor :document

  def initialize(document)
    @document = document
  end

  def clean
    @document.gsub!(/\D/, '')
  end
end
