

def hanoi(n, a, b, c)
    if n == 1
      puts "Chuyển đĩa 1 từ cột #{a} sang cột #{c}"
    else
      hanoi(n-1, a, c, b)
      puts "Chuyển đĩa #{n} từ cột #{a} sang cột #{c}"
      hanoi(n-1, b, a, c)
    end
  end
  
  puts "Nhập số đĩa: "
  n = gets.chomp.to_i
  
  hanoi(n, 'A', 'B', 'C')