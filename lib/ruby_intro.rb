# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  sum=0
  arr.each{|ele|sum+=ele}
  return sum
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length==1
  m=arr.sort{|a,b|b<=>a}
  sum=m[0]+m[1]
  return sum
end

def sum_to_n? arr, n
  for x in 0..arr.length-1
    for y in 0..arr.length-1
        if x!=y
           return true if arr[x]+arr[y]==n
        end     
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}".to_s
end

def starts_with_consonant? s
  return false if s.empty?
  first=s.chr.downcase
  return true if "bcdfghjklmnpqrstvwxyz".include? first
  false
end

def binary_multiple_of_4? s
  return false if s.empty?
  s.each_char{|c| return false if c!='0' && c!='1'}
  dec=0
  pot=0
  s.reverse!
  s.each_char{|c|
               dec=dec+(c.to_i*2**pot)
               pot+=1
  }
  return true if dec % 4 == 0
  false
end

# Part 3

class BookInStock
  def initialize isbn,price
      raise ArgumentError if isbn.empty? || price <= 0
      @isbn=isbn
      @price=price
  end
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    num=@price.to_s
    long=num.length
    if num.include? "."
      x=num.index(".")
      if x >long - 3 # this is a price with 1 decimal
       num=num+"0" 
      else # this is a price with more that 2 decimals
       num=num.slice(0..x+2)
      end   
    else
      num=num+".00" # this is a price without decimal 
    end
    return "$"+num
  end
end  
