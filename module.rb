module Company
  def set_name(name)
    @company_name = name
  end
  def companys_name
    @company_name
  end
  protected
  attr_accessor :company_name
end