tag("h1", "Hello World")

def tag(name, content, attributes = nil)
  "<#{name}>#{content}</#{name}>"
end

p tag("h1", "Hello World")
