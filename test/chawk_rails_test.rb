require 'test_helper'

class ChawkRailsTest < ActiveSupport::TestCase

  def setup
    Chawk.clear_all_data!
    @agent =  Chawk::Models::Agent.first || Chawk::Models::Agent.create(:name=>"Test User")
    @addr = Chawk.addr(@agent,'a:b')
  end

  test "truth" do
    assert_kind_of Module, ChawkRails
  end

  test "has a good agent" do
  	assert_raises(ArgumentError) do 
    	@addr = Chawk.addr(nil,'a:b')
    	@addr = Chawk.addr(Object.new,'a:b')
    	@addr = Chawk.addr(Chawk::Models::Agent,'a:b')
  	end
  end

  test "has key" do
  	assert_respond_to @addr,:key
  end

end
