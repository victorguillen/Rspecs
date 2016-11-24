require 'methods'

describe "Array methods" do

  describe "#my_uniq" do
    context "It creates an array with unique values" do

      subject(:random_array) {[5,1,5,6,8,9,0,1]}
      let(:uniq_array) { [5,1,6,8,9,0] }


      it "raises an exeption when the argument is a string" do
        expect { my_uniq("string") }.to raise_error(ArgumentError)
      end

      it "returns an array" do
        expect(my_uniq(random_array)).to be_an(Array)
      end

      it "returns a unique array in order" do
        expect(my_uniq(random_array)).to eq(uniq_array)
      end
    end
  end

  describe "Array#two_sum" do

      it "returns an empty array if there are no matches" do
        expect([1, 2, 3, 4, 5].two_sum).to be_empty
      end

      it "returns all pairs that sum to 0" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
      end

      it "returns pairs in dictionary wise order" do
        expect([2, 1, -1, -2].two_sum).to eq([[0, 3], [1, 2]])
      end

      it "finds pairs with repeated indices" do
        expect([2, 3, -3, -3, -1, 3].two_sum).to eq([[1, 2], [1, 3], [2, 5], [3, 5]])
      end
  end

  describe "#my_transpose" do

      subject(:matrix_row) do
        [[0, 1, 2],
         [3, 4, 5],
         [6, 7, 8]]
      end

      let(:matrix_col) do
        [[0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]]
      end


      it "transposes an N x N array" do
        expect(my_transpose(matrix_row)).to eq(matrix_col)
      end

      it "allows method chaining" do
        expect(my_transpose(my_transpose(matrix_row))).to eq(matrix_row)
      end

      it "tranposes an N x M array"
  end

  describe "#stock_picker" do

      it "find the most profitable pair" do
        expect(stock_picker([10, 20 , 2, 15, 30])).to eq([2,4])
      end

      it "return empty array if theres not a profitable pair" do
        expect(stock_picker([5, 4, 3, 2, 1])).to be_empty
      end
  end
end
