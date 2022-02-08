def sum(array)
    r = 0
    for i in array
      r += i
    end
    return r
  end
  
  def max(array)
    if array.length == 0
      return 0
    else
      m = array[0]
      for i in array
        if i >= m
          m = i
          #puts(m) For development purposes only
        end
      end
      return m
    end
  end
  
  def max_2_sum(array)
    if array.length == 0
      return 0
    elsif array.length == 1
      return array[0]
    else
      m1, m2 = array[0], array[1]
      m2 = max(array)
      a = array
      a.delete_at(array.index(m2))
      m1 = max(a)
      return m1 + m2
    end
  end
  
  def sum_to_n?(array, n)
    for i in 0...array.length
      for j in 0...array.length
        if i != j and array[i] + array[j] == n
          return TRUE
        end
      end
    end
    return FALSE
  end
  
  
  #END OF PART 1
  
  def hello(name)
    return "Hello, " + name 
  end
  
  def starts_with_consonant?(s)
    if s.length == 0
      return false
    end
    a = s[0].match(/^[[:alpha:]]$/).to_s().length == 0
    if a
      return false
    end
    #If we get here, that means first char is alpha
    b = (s[0] =~ /[aeiouAEIOU]/) != 0 #Makes sure first char is not vowel
    return b
    
  end
  
  def binary_multiple_of_4?(s)
    if s.match(/[0-9]*/).to_s.length == s.length #All characters are number digits
      return ((s =~ /[01]*100$/) == 0 or s.eql? "0")
    else
      return false
    end
    
  end
  
  #puts(binary_multiple_of_4?("1000000000001"))
  
  #END OF PART 2
  
  class BookInStock
    def initialize(isbn, price)
      raise ArgumentError.new(
        "ISBN OF len 0 (ISBN:#{isbn})"
      ) if isbn.length == 0
      raise ArgumentError.new(
        "Price cannot be <= 0 (price:#{price})"
      ) if price <= 0
      @isbn = isbn.to_s()
      @price = price.to_f()
    end
  
    def price_as_string()
      return sprintf("$%.2f", @price)
    end
  
    def isbn 
      return @isbn
    end
  
    def price 
      return @price
    end 
  
    def price=(price)
      @price = price
    end
  
    def isbn=(isbn)
      @isbn = isbn
    end
  end
  
  #book = BookInStock.new("11-123", 10.996)
  #book.price = book.price + 12.2
  #book.isbn = "69-420-DANK"
  #puts("#{book.price_as_string()} and isbn:#{book.isbn}")
  
  
  #END OF PART 3!!!!!