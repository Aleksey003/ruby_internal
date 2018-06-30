require 'date'
require 'ruby-prof'

GC.disable
RubyProf.start
Date.parse('2018-01-02')

result = RubyProf.stop

p result

printer = RubyProf::FlatPrinter.new result
printer.print(File.open('ruby_prof.txt', 'w+'))
