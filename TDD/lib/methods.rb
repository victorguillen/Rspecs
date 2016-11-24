def my_uniq(input)
  raise ArgumentError unless input.is_a? Array

  solution = []
  input.each do |num|
    unless solution.include? num
      solution << num
    end
  end

  solution
end


class Array

  def two_sum
    result = []

    (0..(self.size - 1)).each do |i|
      ((i + 1)..(self.size - 1)).each do |j|
        result << [i, j] if (self[i] + self[j] == 0)
      end
    end
    result
  end

end

def my_transpose(arr)
  solution = Array.new(arr.size) { Array.new(arr.size)}

  arr.size.times do |i|
    arr.size.times do |j|
      solution[j][i] = arr[i][j]
    end
  end
  solution

end


def stock_picker(stocks)
  max_profit = 0
  most_profitable =[]

  (0..(stocks.size - 2)).each do |buy|
    ((buy + 1)..(stocks.size - 1)).each do |sell|
      profit = stocks[sell] - stocks[buy]
      if profit > max_profit
        max_profit = profit
        most_profitable = [buy, sell]
      end
    end
  end
  most_profitable


end
