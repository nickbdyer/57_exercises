require 'spec_helper'
require 'exercise_one'

RSpec.describe User_Interface do

  it "Prompts the user for their name" do
    output = StringIO.new
    user_interface = User_Interface.new(output)
    user_interface.query_name()
    expect(output.string).to include "What is your name?"
  end

end
