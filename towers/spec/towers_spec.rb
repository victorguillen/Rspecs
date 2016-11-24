require "towers"

describe Tower do
  subject(:tower) {Tower.new}
  describe "#initialize" do
    it "initialize a tower array" do
      expect(tower.towers).to be_an(Array)
    end
    it "check that there are three towers" do
      expect(tower.towers.size).to eq(3)
    end
    it "check tower 1 to contain all disks, check towers 2 and 3 to be empty" do
      expect(tower.towers.first.size).to eq(3)
      expect(tower.towers[1]).to be_empty
      expect(tower.towers[2]).to be_empty
    end
  end

  describe "#move" do
    it "makes a simple move" do
      tower.move([0,1])
      expect(tower.towers).to eq([[3,2], [1], []])
    end

    it "doesnt move large piece on top of a small piece" do
      tower.move([0,1])
      expect{tower.move([0,1])}.to raise_error("illegal move")
    end

  end

  describe "#won?" do
    it "checks if disks are in a winning position" do
      tower.towers = [[], [3, 2, 1], []]
      expect(tower.won?).to be(true)
    end

    it "checks if disks are not in a winning position" do
      tower.towers = [[], [3, 2], [1]]
      expect(tower.won?).to be(false)
    end
  end





end
