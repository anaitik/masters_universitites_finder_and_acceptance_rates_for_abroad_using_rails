class TestsController < ApplicationController
  def index
    tests = Test.all
    render json: tests
  end
  def create
    test = Test.new(test_params)
    if test.save
      render json: test, status: :created
    else
      render json: test.errors, status: :unprocessable_entity
    end
  end
  def show
  	byebug
    test = Test.find(params[:id])
    render json: test, include: :questions
  end
  private

  def test_params
    params.require(:test).permit(:title)
  end

  # Other actions like create, update, and destroy
end
