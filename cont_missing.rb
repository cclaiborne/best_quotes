class Object
  def self.const_missing(c)
    require "./bobo"
    STDERR.puts "Missing constant: #{c.inspect}!"
    Bobo
  end
end

Bobo.new.print_bobo
