code = <<END
puts 2 + 3
END
p RubyVM::InstructionSequence.compile(code).disasm

# 0000 trace
# 0002 putself
# 0003 putobject 2
# 0005 putobject 3
# 0007 opt_plus <callinfo!mid:+, argc:1, ARGS_SKIP>
# 0009 opt_send_simple <callinfo!mid:puts, argc:1, FCALL|ARGS_SKIP>
# 0011 leave
