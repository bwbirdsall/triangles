require 'rspec'
require 'triangle'

describe 'triangle' do
  it 'should initialize a triangle given three sides' do
    test_triangle = Triangle.new(3,2,4)
    test_triangle.should be_an_instance_of Triangle
  end

  it 'should return "equilateral" for a triangle with three equal sides' do
    test_triangle = Triangle.new(2,2,2)
    test_triangle.type_test.should eq("equilateral")
  end
  it 'should return "Not a triangle!" for a triangle with invalid sides' do
    test_triangle = Triangle.new(2,15,2)
    test_triangle.type_test.should eq("Not a triangle!")
  end
  it 'should return "isosceles" for a triangle with two equal sides' do
    test_triangle = Triangle.new(2,2,3)
    test_triangle.type_test.should eq("isosceles")
  end
  it 'should return "scalene" for a triangle with no equal sides' do
    test_triangle = Triangle.new(2,4,3)
    test_triangle.type_test.should eq("scalene")
  end
end
