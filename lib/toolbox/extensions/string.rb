class String

  # Remove color formatting characters
  def colorless
    gsub(/\033\[\d+m/, "")
  end

end
