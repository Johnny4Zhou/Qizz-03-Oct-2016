require "benchmark"

print "How many even number do you want: "
input =gets.chomp.to_i

def evennum (n)
  if n <= 0
    output = " "
  elsif n > 0
    output = ""
    for i in 1..n
    output = output +" "+(i*2).to_s
    end
  end
  return output
end
puts evennum(input)


def evennumrecu(n)
  if n == 1
    "2"
  else
    (n*2).to_s + " "+ evennumrecu(n-1)
  end
end
puts evennumrecu(input)

Benchmark.bm do |x|
  x.report do
    1000000.times do
      evennum(10)
    end
  end
end

Benchmark.bm do |x|
  x.report do
    1000000.times do
      $output = []
      evennumrecu(10)
    end
  end
end
