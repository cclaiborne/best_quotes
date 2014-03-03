require "erubis"

template = <<template
Hello! This is a template.
It has <%= whatever %>.
TEMPLATE

eruby = Erubis::Eruby.new(template)
puts eruby.src
puts "=========="
puts eruby.result(:whatever => "ponies!")
