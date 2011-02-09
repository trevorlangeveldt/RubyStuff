class YieldStatements
  def fibonacci(max)
    i1, i2 = 1, 1      #parallel assignment
    
    while i1 <= max
      yield i1        #returns i1 each time OR executes anonomous function passed in as parameter!!
      i1, i2 = i2, i1 + i2
    end
  end  
end