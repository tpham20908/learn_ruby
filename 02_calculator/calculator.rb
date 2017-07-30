def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(lst)
  if !lst.empty?
    lst.reduce(:+)
  else
    0
  end
end

def multiply(numbers)
  numbers.inject(:*)
end

def power(base, pow)
  if pow == 0
    1
  else
    base * power(base, pow - 1)
  end
end

def factorial(num)
  if num == 0
    1
  else
    num * factorial(num - 1)
  end
end