require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  before do
    chef = Dessert.new("dessert", 1, "robert")

  end
  describe "#initialize" do
    it "sets a type" do
      expect(chef.type).to eq("dessert")
    end

    it "sets a quantity" do
      expect(chef.quantity).to eq(1)
    end

    it "starts ingredients as an empty array" do
      expect(chef.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect(chef.add_ingredient('apple')).to raise(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    before do
      chef.add_ingredient('apple')
    end
    it "adds an ingredient to the ingredients array" do
      expect(chef.ingredients).to eq(['apple'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(chef.mix).to receive(:shuffle)
    end
  end

  describe "#eat" do
    before do
      chef.eat(1)
    end
    it "subtracts an amount from the quantity" do
      expect(chef.quantity).to eq(0)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect(chef.eat(5)).to raise(ArgumentError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(chef.chef.serve).to eq("Robert")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to rec(:bake)
    end
  end
end
