require 'spec_helper'
require 'exercise_one'

RSpec.describe User_Interface do

  it "Prompts the user for their name" do
    output = StringIO.new
    user_interface = User_Interface.new(output)
    user_interface.query_name()
    expect(output.string).to include "What is your name?"
  end

  it "Can greet a named user" do
    output = StringIO.new
    user_interface = User_Interface.new(output)
    user_interface.greet_user("Nick")
    expect(output.string).to include "Hello, Nick, nice to meet you!"
  end

  it "Can take a users name and greet them" do
    input = StringIO.new("Nick")
    output = StringIO.new
    user_interface = User_Interface.new(input, output)
    user_interface.welcome_user
    expect(output.string).to include "What is your name?"
    expect(output.string).to include "Nick"
    expect(output.string).to include "Hello, Nick, nice to meet you!"
  end

end
