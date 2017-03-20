module FoodsHelper
	def foodimage(image_path, size)
  if size == "large"
    actual_size = "200x200"
  elsif size == "medium"
    acutual_size = "100x100"
  else
    actual_size = "50x50"
  end
  image_tag image_path, size: "#{actual_size}"
end
end
