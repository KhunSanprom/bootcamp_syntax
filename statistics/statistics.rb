# statistics.rb
class Statistics
  def initialize(numbers)
    @numbers = numbers
  end

  def find_max
    return @numbers.max
  end

  def find_min
    return @numbers.min
  end

  def average
    @avg = 0
    @numbers.each do |num|
      @avg +=  num
    end
    return @avg*1.0/@numbers.count()
  end

  def mode
    tallied = @numbers.tally
    top_pair = tallied.sort_by { |_,v| v }.last(1) #เรียงค่าที่มากที่สุดไว้ข้างหลังสุด นำตัวนั้นมา
    arr = []
    arr.push(top_pair[0][0])
    return arr # ไม่ได้ดัก เคส ที่มีตัวที่ซ้ำมากว่า 2 ตัว
  end

  def even_numbers
    return @even_data = @numbers.select{|num| num %2 ==0}
  end

  def count_vowels(sentent)
    return sentent.count('aeiou')
  end

  def factorial(num)
    i = num - 1
    while i > 1 do
      num *= i
      i -= 1
    end
    return num
  end
end
