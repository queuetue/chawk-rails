require 'test_helper'

class ChawkRailsTest < ActiveSupport::TestCase

  def setup
    Chawk.clear_all_data!
    @agent =  Chawk::Models::Agent.first || Chawk::Models::Agent.create(:name=>"Test User")
    @node = Chawk.node(@agent,'a:b')
  end

  test "truth" do
    assert_kind_of Module, ChawkRails
  end

  test "has a good agent" do
  	assert_raises(ArgumentError) do 
    	@node = Chawk.node(nil,'a:b')
    	@node = Chawk.node(Object.new,'a:b')
    	@node = Chawk.node(Chawk::Models::Agent,'a:b')
  	end
  end

  test "has key" do
  	assert_respond_to @node,:key
  end

end
