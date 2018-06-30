require 'benchmark'
num_rows = 100_000
num_cols = 10

data = Array.new(num_rows) { Array.new(num_cols) { 'x' * 1000 } }
# puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)

# GC.disable

time = Benchmark.realtime do
  csv = data.map { |row| row.join(', ') }.join('/n')
end
p time

time = Benchmark.realtime do
  csv = ''
  num_rows.times do |row|
    num_cols.times do |col|
      csv << data[row][col]
      csv << ', ' unless col == num_cols - 1
    end
    csv << "\n" unless row == num_rows - 1
  end
end
p time
