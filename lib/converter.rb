class Converter

  def celsius(c)
    f = c*9/5.to_f.round(1) + 32
  end

  def fahrenheit(f)
    c = ((f-32).to_f * 5/9.to_f).round(1)
  end

end
