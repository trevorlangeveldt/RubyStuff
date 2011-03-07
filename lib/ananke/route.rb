require 'ananke'
require 'sinatra/main'
#--------------------Repositories---------------------
module Repository
  module User
    @data = [ { 
                :id => '1', 
                :name => 'One'
              }, 
              {
                :id => '2', 
                :name => 'Two'
              } ]
              
    def self.all
      @data.to_s
    end
    def self.one(id)
        index = @data.index{ |d| d[:id] == id }
        (index.nil? && '') || @data[index].to_s
    end
  end
  
  module Car
    @data = [ { 
                :id => '1342', 
                :user_id => '1',
                :name => 'VW'
              }, 
              {
                :id => '7352',
                :user_id => '2',
                :name => 'Mazda'
              } ]
         
    def self.user(id)
      index = @data.index{ |d| d[:user_id] == id }
      (index.nil? && '') || @data[index].to_s
    end
  end
end

#-------------------REST Resources--------------------

route :user do
    id :id
    link_to :car
end

route :car do
  id :id
  route_for :user
end