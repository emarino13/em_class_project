class SourceController < ApplicationController

  def fortune
    file = File.open(Rails.root.join('lib', 'fortune.rb'))
    render :text => CodeRay.scan(file.read, :ruby).div(:line_numbers => :table)
  end

  def rps
    file = File.open(Rails.root.join('lib', 'rock_paper_scissors.rb'))
    render :text => CodeRay.scan(file.read, :ruby).div(:line_numbers => :table)

  end

  def beastie_boys
    file = File.open(Rails.root.join('lib', 'beastie_boys.rb'))
    render :text => CodeRay.scan(file.read, :ruby).div(:line_numbers => :table)

  end

  def converter
    file = File.open(Rails.root.join('lib', 'converter.rb'))
    render :text => CodeRay.scan(file.read, :ruby).div(:line_numbers => :table)

  end

  def test_converter
    file = File.open(Rails.root.join('lib', 'test_converter.rb'))
    render :text => CodeRay.scan(file.read, :ruby).div(:line_numbers => :table)
  end
end

