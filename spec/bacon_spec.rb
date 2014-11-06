require 'bacon'

describe Bacon do
  it "is edible" do
    expect(Bacon.edible?).to_be_true
  end
end
