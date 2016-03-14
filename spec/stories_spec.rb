
require_relative '../lib/operators/sum.rb'
require_relative '../lib/calculator.rb'
require_relative '../lib/expression_prioritizer.rb'
require_relative '../lib/operation.rb'

describe Calculator do

  context "single operations" do
    let(:subject) { Calculator.new("1 + 3") }

    it "returns the sum" do
      expect(subject.equals).to eq(4)
    end
  end
end
