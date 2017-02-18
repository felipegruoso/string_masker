class StringMasker::Document

  attr_accessor :type, :document

  CPF_CNPJ = :cpf_cnpj
  CPF_SIZE = 11

  def initialize(type, document)
    @type = type
    @document = document
  end

  def format
    klass = masker_class
    klass ? klass.new(document).format : document
  end

  def masker_class
    case type.to_s.to_sym
    when CPF_CNPJ
      document.to_s.size == CPF_SIZE ? StringMasker::Document::CPF : StringMasker::Document::CNPJ
    end
  end
end
