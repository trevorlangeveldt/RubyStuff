# When a class includes a module, that module's instance methods 
# become available as instance methods of the class. It's almost
# as if the module becomes a superclass of the class that uses it. 
# When you include a module, Ruby creates an anonymous proxy class 
# that references that module, and inserts that proxy as the direct
# superclass of the class that did the including. The proxy class
#  contains references to the instance variables and methods of the
# module. This is important: the same module may be included in
# many different classes, and will appear in many different
# inheritance chains. However, thanks to the proxy class,
# there is still only one underlying module: change a method
# definition in that module, and it will change in all classes
# that include that module, both past and future!

module Parent
   def say_hello
     "Hello World!"
   end
end

class Child
  include Parent # When including a module, that module's instance methods become available to the class.
end

