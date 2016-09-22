require 'test_helper'

class Grape::Generator::Rails::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Grape::Generator::Rails
  end
end
