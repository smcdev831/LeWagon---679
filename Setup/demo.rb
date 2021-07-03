def circle_area(radius)
  # TODO: Implement the `circle_area` method
  if radius.negative?
    return 0
  else
    area_of_circle = 3.14 * radius**2
    return area_of_circle
  end
end
