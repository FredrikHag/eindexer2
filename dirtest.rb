

require_relative "Wordstream"
require_relative "Token"
require_relative "parser2"
require_relative "indexDocument"
require_relative "Indexer"
require_relative "counter"
require_relative "control"






def test()
    
t1 = Time.new


indexer = Indexer.new("/srv/jekyll/_site")
documentQueue = indexer.checkDir("/srv/jekyll/_site")

puts documentQueue


t2 = Time.new

diff = t2 - t1

puts "Indexed and counted site in #{diff}"



end

test()