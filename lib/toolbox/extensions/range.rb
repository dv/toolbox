class Range

  # Splits a range into several ranges at the points
  # passed in.
  def split(*points)
    ranges = []

    current_begin = self.begin

    points.each do |point|
      ranges << Range.new(current_begin, point, true)
      current_begin = point
    end

    ranges << Range.new(current_begin, self.end, self.exclude_end?)
  end

end
