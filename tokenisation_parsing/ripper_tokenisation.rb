require 'ripper'
require 'pp'
code = <<STR
10.times do |t|
  p t
end
STR
pp 'code:'
pp code
pp 'token'
pp Ripper.lex(code)
pp
pp 'parse'
pp Ripper.sexp(code)
