require 'benchmark'

21.times do |exponent|
  target_key = nil
  size = 2**exponent
  hash = {}
  (1..size).each do |n|
    index = rand
    target_key = index if n > size / 2 && target_key.nil?
    hash[index] = rand
  end
  #
  GC.disable
  Benchmark.bm do |bench|
    bench.report("retriving element from hash with #{size} elements 1000 times") do
      10000.times do
        val = hash[target_key]
      end
    end
  end
  GC.enable
end
