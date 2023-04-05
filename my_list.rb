# Import the Enumerable module from the enumerable.rb file
require_relative './enumerable'

# Create a class MyList that includes the Enumerable module
class MyList
  include Enumerable

  # Initialize the class with a list of items
  # Add a splat(*) operator so that the class accepts an arbitrary number of arguments as an array
  def initialize(*items)
    @list = items
  end

  # Define the each method that will be used by the Enumerable module to iterate through the list of items
  def each(&block)
    @list.each(&block)
  end
end
