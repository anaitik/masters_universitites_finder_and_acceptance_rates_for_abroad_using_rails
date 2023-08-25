module BxBlockTest
class TestsController < ApplicationController
  def index
    tests = BxBlockTest::Test.all
    render json: tests
  end
end
end