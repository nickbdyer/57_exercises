class User_Interface 

  def initialize(input = STDIN, output)
    @input = input
    @output = output
  end

  def query_name
    @output.puts("What is your name?")
  end

  def greet_user(name)
    @output.puts("Hello, #{name}, nice to meet you!")
  end

  def read_name
    @input.gets.chomp
  end

  def welcome_user
    query_name
    name = read_name
    greet_user(name)
  end

end
